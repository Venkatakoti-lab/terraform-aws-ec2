variable "ami_id" {
  default = "ami-0c398cb65a93047f2"
}
variable "instance_type" {
  default = "t3.micro"
  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "The instance type must be one of 't2.micro', 't2.small', or 't3.medium'."
  }
}
variable "sg" {
  default = ""
}
variable "tags" {
  default = {}
}