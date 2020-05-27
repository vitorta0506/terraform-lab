provider "aws" {
  region  = "${var.rgdefault}"
  profile = "hebara"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "hebstatetf"
    key    = "s3.us-east-2.amazonaws.com/hebstatetf"
    region = "us-east-2"
  }
}