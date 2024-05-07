variable "token" {
    description = "Vault token"
    default = "hvs...."
}
variable "secret_path" {
    description = "Path to secret"
    default = "secret/todo3"
}

variable "vault_address" {
    description = "Vault Address"
    default = "http://127.0.0.1:8200"
}

variable "approle" {
    description = "App role"
    default = "approle"

}

variable "role_name" {
    description = "Role name"
    default = "terraform"

}