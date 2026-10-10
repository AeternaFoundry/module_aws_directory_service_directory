output "directory_service_directories_id" {
  description = "Map of id values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "directory_service_directories_access_url" {
  description = "Map of access_url values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.access_url if v.access_url != null && length(v.access_url) > 0 }
}
output "directory_service_directories_alias" {
  description = "Map of alias values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "directory_service_directories_connect_settings" {
  description = "Map of connect_settings values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => one(v.connect_settings) if v.connect_settings != null && length(v.connect_settings) > 0 }
}
output "directory_service_directories_description" {
  description = "Map of description values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.description if v.description != null && length(v.description) > 0 }
}
output "directory_service_directories_desired_number_of_domain_controllers" {
  description = "Map of desired_number_of_domain_controllers values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.desired_number_of_domain_controllers if v.desired_number_of_domain_controllers != null }
}
output "directory_service_directories_dns_ip_addresses" {
  description = "Map of dns_ip_addresses values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.dns_ip_addresses if v.dns_ip_addresses != null && length(v.dns_ip_addresses) > 0 }
}
output "directory_service_directories_edition" {
  description = "Map of edition values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.edition if v.edition != null && length(v.edition) > 0 }
}
output "directory_service_directories_enable_directory_data_access" {
  description = "Map of enable_directory_data_access values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.enable_directory_data_access if v.enable_directory_data_access != null }
}
output "directory_service_directories_enable_sso" {
  description = "Map of enable_sso values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.enable_sso if v.enable_sso != null }
}
output "directory_service_directories_name" {
  description = "Map of name values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.name if v.name != null && length(v.name) > 0 }
}
output "directory_service_directories_password" {
  description = "Map of password values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "directory_service_directories_region" {
  description = "Map of region values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.region if v.region != null && length(v.region) > 0 }
}
output "directory_service_directories_security_group_id" {
  description = "Map of security_group_id values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.security_group_id if v.security_group_id != null && length(v.security_group_id) > 0 }
}
output "directory_service_directories_short_name" {
  description = "Map of short_name values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.short_name if v.short_name != null && length(v.short_name) > 0 }
}
output "directory_service_directories_size" {
  description = "Map of size values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.size if v.size != null && length(v.size) > 0 }
}
output "directory_service_directories_tags" {
  description = "Map of tags values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "directory_service_directories_tags_all" {
  description = "Map of tags_all values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "directory_service_directories_type" {
  description = "Map of type values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => v.type if v.type != null && length(v.type) > 0 }
}
output "directory_service_directories_vpc_settings" {
  description = "Map of vpc_settings values across all directory_service_directories, keyed the same as var.directory_service_directories"
  value       = { for k, v in aws_directory_service_directory.directory_service_directories : k => one(v.vpc_settings) if v.vpc_settings != null && length(v.vpc_settings) > 0 }
}

