terraform{
    required_providers{
        aws= {
            source = "hashicorp/aws"
        }
    }
}
provider "aws"{
    region ="ap-northeast-1"
    access_key ="AKIAVD6AYMC7W5F6SNHF"
    secret_key ="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"
}
resource "aws_instance" "aws"{
    ami ="ami-0ed99df77a82560e6"
    instance_type ="t2.micro"
}
output "public_ip"{
    value = aws_instance.aws.public_ip
}