//required variables
variable "kms_keyring_name" {
  description = "The resource name for the KeyRing."
  type        = string
}

variable "location_id" {
  description = "The location for the KeyRing. A full list of valid locations can be found by running gcloud kms locations list."
  type        = string
  default     = "asia-south1"
}

variable "kms_key_name" {
  description = "The resource name for the CryptoKey."
  type        = list(string)
  default     = []
}

variable "algorithm" {
  description = "The algorithm to use when creating a version based on this template. See the algorithm reference for possible inputs."
  type        = string
}

//optional variables

variable "project_id" {
  description = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
}

variable "labels" {
  description = "Labels with user-defined metadata to apply to this resource."
  type        = map(any)
}

variable "purpose" {
  description = " The immutable purpose of this CryptoKey. See the purpose reference for possible inputs. Default value is ENCRYPT_DECRYPT. Possible values are ENCRYPT_DECRYPT, ASYMMETRIC_SIGN, and ASYMMETRIC_DECRYPT."
  type        = string
  default     = "ENCRYPT_DECRYPT"
}

variable "rotation_period" {
  description = "Every time this period passes, generate a new CryptoKeyVersion and set it as the primary. The first rotation will take place after the specified period. The rotation period has the format of a decimal number with up to 9 fractional digits, followed by the letter s (seconds). It must be greater than a day (ie, 86400)."
  type        = string
}

variable "protection_level" {
  description = "The protection level to use when creating a version based on this template. Possible values include 'SOFTWARE', 'HSM', 'EXTERNAL'. Defaults to 'SOFTWARE'."
  type        = string
  default     = "SOFTWARE"
}

variable "prevent_destroy" {
  description = "Set the prevent_destroy lifecycle attribute on keys."
  type        = bool
  default     = true
}