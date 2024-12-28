variable "tf_state_bucket" {
  description = "Name of S3 bucket in AWS for storing TF state"
  default     = "my-project-recipe"
}
 
variable "tf_state_lock_table" {
  description = "Name of the DynamoDB table for TF state locking"
  default     = "recipe-table"
}
 
variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"
}
 
variable "contact" {
  description = "Contact name for tagging resources"
  default     = "mark@example.com"
}
