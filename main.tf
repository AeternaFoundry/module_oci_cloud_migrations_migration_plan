resource "oci_cloud_migrations_migration_plan" "cloud_migrations_migration_plans" {
  for_each = var.cloud_migrations_migration_plans

  compartment_id           = each.value.compartment_id
  display_name             = each.value.display_name
  migration_id             = each.value.migration_id
  defined_tags             = each.value.defined_tags
  freeform_tags            = each.value.freeform_tags
  source_migration_plan_id = each.value.source_migration_plan_id

  dynamic "strategies" {
    for_each = each.value.strategies != null ? each.value.strategies : []
    content {
      adjustment_multiplier = strategies.value.adjustment_multiplier
      metric_time_window    = strategies.value.metric_time_window
      metric_type           = strategies.value.metric_type
      percentile            = strategies.value.percentile
      resource_type         = strategies.value.resource_type
      strategy_type         = strategies.value.strategy_type
    }
  }

  dynamic "target_environments" {
    for_each = each.value.target_environments != null ? each.value.target_environments : []
    content {
      availability_domain     = target_environments.value.availability_domain
      cluster_asset_id        = target_environments.value.cluster_asset_id
      dedicated_vm_host       = target_environments.value.dedicated_vm_host
      fault_domain            = target_environments.value.fault_domain
      ms_license              = target_environments.value.ms_license
      olvm_templates          = target_environments.value.olvm_templates
      preferred_shape_type    = target_environments.value.preferred_shape_type
      subnet                  = target_environments.value.subnet
      target_compartment_id   = target_environments.value.target_compartment_id
      target_environment_type = target_environments.value.target_environment_type
      vcn                     = target_environments.value.vcn
      vnic_profile_asset_id   = target_environments.value.vnic_profile_asset_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

