variable "name" {
  type = string
}

variable "comment" {
  type = string
}

variable "common_tags" {
  type        = map
  description = "Implments the common tags scheme"
}
