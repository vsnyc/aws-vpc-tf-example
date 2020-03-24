provider "aws" {
  region     = var.region
}

resource "aws_cloudformation_stack" "vpcstack" {
  name = var.stackName
  template_url = "https://aws-quickstart.s3.us-east-1.amazonaws.com/quickstart-aws-vpc/templates/aws-vpc.template"
  parameters = {
    AvailabilityZones = var.AvailabilityZones
    CreateAdditionalPrivateSubnets = var.CreateAdditionalPrivateSubnets
    CreatePrivateSubnets = var.CreatePrivateSubnets
    KeyPairName = var.KeyPairName
    NATInstanceType = var.NATInstanceType
    NumberOfAZs = var.NumberOfAZs
    PrivateSubnet1ACIDR = var.PrivateSubnet1ACIDR
    PrivateSubnet1BCIDR = var.PrivateSubnet1BCIDR
    PrivateSubnet2ACIDR = var.PrivateSubnet2ACIDR
    PrivateSubnet2BCIDR = var.PrivateSubnet2BCIDR
    PrivateSubnet3ACIDR = var.PrivateSubnet3ACIDR
    PrivateSubnet3BCIDR = var.PrivateSubnet3BCIDR
    PrivateSubnet4ACIDR = var.PrivateSubnet4ACIDR
    PrivateSubnet4BCIDR = var.PrivateSubnet4BCIDR
    PrivateSubnetATag1 = var.PrivateSubnetATag1
    PrivateSubnetATag2 = var.PrivateSubnetATag2
    PrivateSubnetATag3 = var.PrivateSubnetATag3
    PrivateSubnetBTag1 = var.PrivateSubnetBTag1
    PrivateSubnetBTag2 = var.PrivateSubnetBTag2
    PrivateSubnetBTag3 = var.PrivateSubnetBTag3
    PublicSubnet1CIDR = var.PublicSubnet1CIDR
    PublicSubnet2CIDR = var.PublicSubnet2CIDR
    PublicSubnet3CIDR = var.PublicSubnet3CIDR
    PublicSubnet4CIDR = var.PublicSubnet4CIDR
    PublicSubnetTag1 = var.PublicSubnetTag1
    PublicSubnetTag2 = var.PublicSubnetTag2
    PublicSubnetTag3 = var.PublicSubnetTag3
    VPCCIDR = var.VPCCIDR
    VPCTenancy = var.VPCTenancy
  }
}