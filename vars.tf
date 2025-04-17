#identity
variable compartment_ocid { }
variable tenancy_ocid { }
variable region { }

#network

#oke
variable kube_cluster_name { default = "oke_cluster" }
variable kube_version { default = "v1.21.5" }
variable node_shape { default = "VM.Standard2.1" }
#variable node_shape_ocpus { default = 1 }
#variable node_shape_memory { default = 8 }
variable node_pool_ssh_public_key { default = "sh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDkkDoPXZg4oLfqYQ2PanS+QhaIN9dPSRskxyplK3teEjUjhriY2FnZ0NZBuuFhUm9XIKXCfZLQdWRZ4U3qAFcYQI8mvzR0xrba88e9A8gYm+j9VGkF59HOp4KBwBenKeJLDBCm0FbJ94+puVanVSKmgZa7K7boCflCSm4KshFl6/88peug9fhEpwGO6FCgvn1iH0JOasXGaC+IzJ6WCOMpjTdqWEVm0oVRPgp21odJwowRAix9V8kCOQ6Oy31wjSpXqW0nmp9Y1m3N+k6j0Yz40bVTPAL1+4s2TwuY6wh54incndNwbsppn9O7F1ZJP4moD+KO1JHCjuasgOyKYssL9e45GnPQFNIuVkCbe8LYHHK1gQe8/7Gt3GJF/i6vTUhuuRRr3gfLkyD/4WVUUSrEWjC1Dy42s91TdVlJNrROtjoNdOSVwMnQ34Uepxb4lLZYo48WlQPceoeg4pnuHUdaowBG5jly08JweUSbuJhBJo9gWo0DpMM0NAmL6/GgrrM="}

#operator
variable operator_shape { default = "VM.Standard.E3.Flex" }
variable operator_shape_ocpus { default = 1 }
variable operator_shape_memory { default = 8 }
variable operator_ssh_public_key { default = "sh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDkkDoPXZg4oLfqYQ2PanS+QhaIN9dPSRskxyplK3teEjUjhriY2FnZ0NZBuuFhUm9XIKXCfZLQdWRZ4U3qAFcYQI8mvzR0xrba88e9A8gYm+j9VGkF59HOp4KBwBenKeJLDBCm0FbJ94+puVanVSKmgZa7K7boCflCSm4KshFl6/88peug9fhEpwGO6FCgvn1iH0JOasXGaC+IzJ6WCOMpjTdqWEVm0oVRPgp21odJwowRAix9V8kCOQ6Oy31wjSpXqW0nmp9Y1m3N+k6j0Yz40bVTPAL1+4s2TwuY6wh54incndNwbsppn9O7F1ZJP4moD+KO1JHCjuasgOyKYssL9e45GnPQFNIuVkCbe8LYHHK1gQe8/7Gt3GJF/i6vTUhuuRRr3gfLkyD/4WVUUSrEWjC1Dy42s91TdVlJNrROtjoNdOSVwMnQ34Uepxb4lLZYo48WlQPceoeg4pnuHUdaowBG5jly08JweUSbuJhBJo9gWo0DpMM0NAmL6/GgrrM="}
variable operator_ssh_private_key_path { default = "./keys/id_rsa"}
variable operator_os { default = "Oracle Linux" }
variable operator_os_version { default = "7.9" }

# MySQL Data Service
variable "mds_instance_name" {
  description = "Name of the MDS instance"
  default     = "MySQLInstance"
}

variable "mysql_db_system_admin_username" {
  description = "MySQL Database Service Username"
  default     = "admin"
}

variable "mysql_db_system_admin_password" {
  description = "Password for the admin user for MySQL Database Service"
  type        = string
  default     = "Jamesql##0987$$"
}

variable "mysql_shape_name" {
    #default = "MySQL.VM.Standard.E3.1.8GB"
    #default = "MySQL.HeatWave.VM.Standard.E3"
    default = "VM.Standard.A1.Flex"
}

variable "mysql_data_storage_in_gb" {
    #default = 50
    default = 1024
}

variable "deploy_mds_ha" {
  description = "Deploy High Availability for MDS"
  type        = bool
  default     = false
}
