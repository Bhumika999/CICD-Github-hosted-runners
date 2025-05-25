# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "app1-terraform-remote-state"
    key            = "cicd/github-hosted-runners/terraform.tfstate"
    region         = "us-east-1"
    profile        = "bhumika-terraform1"
    dynamodb_table = "terraform-state-lock"
  }
}