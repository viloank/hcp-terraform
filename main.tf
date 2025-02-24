terraform { 
  cloud { 
    
    organization = "ankit-org1" 

    workspaces { 
      name = "hcp-terraform" 
    } 
  } 
}

provider "aws" {
    region = "ap-south-1"
    
}

resource "aws_instance" "myhost" {
    ami = "ami-0d682f26195e9ec0f"
    instance_type = "t3.micro"
    tags = {
        Name = "hcp-host3"
    }
}
