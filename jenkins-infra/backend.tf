terraform {
  backend "s3" {
    profile = "devops-test"
    bucket = "dev-deploymenttfbackend"
    dynamodb_table = "dev-deploymenttfbackend"
    region = "eu-west-1"    
    key = "jenkins/terraform/tfstate"
    encrypt = true
    
  }
}