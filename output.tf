output "id" {
  description = "an identifier for the resource with format"
  value       = data.google_kms_key_ring.gcp_kms_keyring.id
}