output "keypair" {
    value = data.vault_generic_secret.keypair.data["public_key"]
}
