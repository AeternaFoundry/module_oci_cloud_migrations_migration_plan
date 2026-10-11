variable "cloud_migrations_migration_plans" {
  description = <<EOT
Map of cloud_migrations_migration_plans, attributes below
Required:
    - compartment_id
    - display_name
    - migration_id
Optional:
    - defined_tags
    - freeform_tags
    - source_migration_plan_id
    - strategies (block):
        - adjustment_multiplier (optional)
        - metric_time_window (optional)
        - metric_type (optional)
        - percentile (optional)
        - resource_type (required)
        - strategy_type (required)
    - target_environments (block):
        - availability_domain (optional)
        - cluster_asset_id (optional)
        - dedicated_vm_host (optional)
        - fault_domain (optional)
        - ms_license (optional)
        - olvm_templates (optional)
        - preferred_shape_type (optional)
        - subnet (optional)
        - target_compartment_id (optional)
        - target_environment_type (required)
        - vcn (optional)
        - vnic_profile_asset_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id           = string
    display_name             = string
    migration_id             = string
    defined_tags             = optional(map(string))
    freeform_tags            = optional(map(string))
    source_migration_plan_id = optional(string)
    strategies = optional(list(object({
      adjustment_multiplier = optional(number)
      metric_time_window    = optional(string)
      metric_type           = optional(string)
      percentile            = optional(string)
      resource_type         = string
      strategy_type         = string
    })))
    target_environments = optional(list(object({
      availability_domain     = optional(string)
      cluster_asset_id        = optional(string)
      dedicated_vm_host       = optional(string)
      fault_domain            = optional(string)
      ms_license              = optional(string)
      olvm_templates          = optional(map(string))
      preferred_shape_type    = optional(string)
      subnet                  = optional(string)
      target_compartment_id   = optional(string)
      target_environment_type = string
      vcn                     = optional(string)
      vnic_profile_asset_id   = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloud_migrations_migration_plans : (
        v.strategies == null || alltrue([for item in v.strategies : (contains([for v in ["AS_IS", "AVERAGE", "PEAK", "PERCENTILE"] : lower(v)], lower(item.strategy_type)))])
      )
    ])
    error_message = "must be one of: \"AS_IS\", \"AVERAGE\", \"PEAK\", \"PERCENTILE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.cloud_migrations_migration_plans : (
        v.target_environments == null || alltrue([for item in v.target_environments : (contains([for v in ["OLVM_TARGET_ENV", "VM_TARGET_ENV"] : lower(v)], lower(item.target_environment_type)))])
      )
    ])
    error_message = "must be one of: \"OLVM_TARGET_ENV\", \"VM_TARGET_ENV\""
  }
}

