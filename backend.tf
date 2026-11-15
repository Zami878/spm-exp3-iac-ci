# Remote state, so the state survives cleanWs() in Jenkins and
# "terraform destroy" can be run locally in Step 11.
terraform {
  backend "s3" {
    bucket = "spm-tfstate-keshav-391"
    key    = "exp3/terraform.tfstate"
    region = "ap-south-1"
  }
}
