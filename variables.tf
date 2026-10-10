variable "directory_service_directories" {
  description = <<EOT
Map of directory_service_directories, attributes below
Required:
    - name
    - password
Optional:
    - alias
    - description
    - desired_number_of_domain_controllers
    - edition
    - enable_directory_data_access
    - enable_sso
    - region
    - short_name
    - size
    - tags
    - tags_all
    - type
    - connect_settings (block):
        - customer_dns_ips (required)
        - customer_username (required)
        - subnet_ids (required)
        - vpc_id (required)
    - vpc_settings (block):
        - subnet_ids (required)
        - vpc_id (required)
EOT

  type = map(object({
    name                                 = string
    password                             = string
    alias                                = optional(string)
    description                          = optional(string)
    desired_number_of_domain_controllers = optional(number)
    edition                              = optional(string)
    enable_directory_data_access         = optional(bool)
    enable_sso                           = optional(bool)
    region                               = optional(string)
    short_name                           = optional(string)
    size                                 = optional(string)
    tags                                 = optional(map(string))
    tags_all                             = optional(map(string))
    type                                 = optional(string)
    connect_settings = optional(object({
      customer_dns_ips  = set(string)
      customer_username = string
      subnet_ids        = set(string)
      vpc_id            = string
    }))
    vpc_settings = optional(object({
      subnet_ids = set(string)
      vpc_id     = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.directory_service_directories : (
        v.desired_number_of_domain_controllers == null || (v.desired_number_of_domain_controllers >= 2)
      )
    ])
    error_message = "must be at least 2"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

