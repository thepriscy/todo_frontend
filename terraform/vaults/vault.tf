provider "vault" {
  address = var.vault_address
  token   = var.token
}


# resource "vault_auth_backend" "approle" {
#   type = var.approle

# }

# resource "vault_approle_auth_backend_role_id" "role" {
#   backend = vault_auth_backend.approle.path
#   role_name = var.role_name
# }

# resource "vault_approle_auth_backend_role_secret_id" "terraform" {
#     backend = vault_auth_backend.approle.path
#     role_name = vault_approle_auth_backend_role_id.role.role_name
# }
