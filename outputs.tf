output "cloud_migrations_migration_plans_id" {
  description = "Map of id values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no id are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_migrations_migration_plans_calculated_limits" {
  description = "Map of calculated_limits values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no calculated_limits are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.calculated_limits if v.calculated_limits != null && length(v.calculated_limits) > 0 }
}
output "cloud_migrations_migration_plans_compartment_id" {
  description = "Map of compartment_id values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no compartment_id are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "cloud_migrations_migration_plans_defined_tags" {
  description = "Map of defined_tags values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no defined_tags are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "cloud_migrations_migration_plans_display_name" {
  description = "Map of display_name values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no display_name are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "cloud_migrations_migration_plans_freeform_tags" {
  description = "Map of freeform_tags values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "cloud_migrations_migration_plans_lifecycle_details" {
  description = "Map of lifecycle_details values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "cloud_migrations_migration_plans_migration_id" {
  description = "Map of migration_id values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no migration_id are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.migration_id if v.migration_id != null && length(v.migration_id) > 0 }
}
output "cloud_migrations_migration_plans_migration_plan_stats" {
  description = "Map of migration_plan_stats values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no migration_plan_stats are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.migration_plan_stats if v.migration_plan_stats != null && length(v.migration_plan_stats) > 0 }
}
output "cloud_migrations_migration_plans_reference_to_rms_stack" {
  description = "Map of reference_to_rms_stack values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no reference_to_rms_stack are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.reference_to_rms_stack if v.reference_to_rms_stack != null && length(v.reference_to_rms_stack) > 0 }
}
output "cloud_migrations_migration_plans_source_migration_plan_id" {
  description = "Map of source_migration_plan_id values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no source_migration_plan_id are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.source_migration_plan_id if v.source_migration_plan_id != null && length(v.source_migration_plan_id) > 0 }
}
output "cloud_migrations_migration_plans_state" {
  description = "Map of state values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no state are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.state if v.state != null && length(v.state) > 0 }
}
output "cloud_migrations_migration_plans_strategies" {
  description = "Map of strategies values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no strategies are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.strategies if v.strategies != null && length(v.strategies) > 0 }
}
output "cloud_migrations_migration_plans_system_tags" {
  description = "Map of system_tags values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no system_tags are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "cloud_migrations_migration_plans_target_environments" {
  description = "Map of target_environments values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no target_environments are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.target_environments if v.target_environments != null && length(v.target_environments) > 0 }
}
output "cloud_migrations_migration_plans_time_created" {
  description = "Map of time_created values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no time_created are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "cloud_migrations_migration_plans_time_updated" {
  description = "Map of time_updated values across all cloud_migrations_migration_plans, keyed the same as var.cloud_migrations_migration_plans except keys with no time_updated are omitted"
  value       = { for k, v in oci_cloud_migrations_migration_plan.cloud_migrations_migration_plans : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

