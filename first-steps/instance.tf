provider "aws" {
  access_key = "ACCESS_KEY_HERE" ## Please place your respective AWS ACCESS KEY GENERATION
  secret_key = "SECRET_KEY_HERE" ## Please place your respective AWS SECRET KEY GENERATION
  region     = "AWS_REGION_NAME" ## Please place your respective AWS_REGION_NAME
}

resource "aws_instance" "example" {
  ami           = "ami-04533969992547875" ### https://cloud-images.ubuntu.com/locator/ec2/
  instance_type = "t2.micro" # Go to Above Location and paste Respective Instance Type
}

