terraform {
  backend "s3" {
    bucket = "my-state-bucket"
    key    = "EKS/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "statetable"
  }
}
