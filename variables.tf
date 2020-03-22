//Required inputs
variable "region" {
  description = "The AWS Region you want to launch this Terraform application which creates a new VPC using the AWS VPC Quick Start."
}
variable "stackName" {
  description = "Name of your VPC stack"
}
variable "AvailabilityZones" {
  description = "List of Availability Zones to use for the subnets in the VPC. Note: The logical order is preserved."
}

//Inputs with default values
variable "CreateAdditionalPrivateSubnets" {
  default = "false"
  description = "Set to true to create a network ACL protected subnet in each Availability Zone. If false, the CIDR parameters for those subnets will be ignored. If true, it also requires that the 'Create private subnets' parameter is also true to have any effect."
}
variable "CreatePrivateSubnets" {
  default = "true"
  description = "Set to false to create only public subnets. If false, the CIDR parameters for ALL private subnets will be ignored."
}
variable "KeyPairName" {
  default = "deprecated"
  description = "Deprecated. NAT gateways are now supported in all regions."
}
variable "NATInstanceType" {
  default = "deprecated"
  description = "Deprecated. NAT gateways are now supported in all regions."
}
variable "NumberOfAZs" {
  default = "2"
  description = "Number of Availability Zones to use in the VPC. This must match your selections in the list of Availability Zones parameter."
}
variable "PrivateSubnet1ACIDR" {
  default = "10.0.0.0/19"
  description = "CIDR block for private subnet 1A located in Availability Zone 1"
}
variable "PrivateSubnet1BCIDR" {
  default = "10.0.192.0/21"
  description = "CIDR block for private subnet 1B with dedicated network ACL located in Availability Zone 1"
}
variable "PrivateSubnet2ACIDR" {
  default = "10.0.32.0/19"
  description = "CIDR block for private subnet 2A located in Availability Zone 2"
}
variable "PrivateSubnet2BCIDR" {
  default = "10.0.200.0/21"
  description = "CIDR block for private subnet 2B with dedicated network ACL located in Availability Zone 2"
}
variable "PrivateSubnet3ACIDR" {
  default = "10.0.64.0/19"
  description = "CIDR block for private subnet 3A located in Availability Zone 3"
}
variable "PrivateSubnet3BCIDR" {
  default = "10.0.208.0/21"
  description = "CIDR block for private subnet 3B with dedicated network ACL located in Availability Zone 3"
}
variable "PrivateSubnet4ACIDR" {
  default = "10.0.96.0/19"
  description = "CIDR block for private subnet 4A located in Availability Zone 4"
}
variable "PrivateSubnet4BCIDR" {
  default = "10.0.216.0/21"
  description = "CIDR block for private subnet 4B with dedicated network ACL located in Availability Zone 4"
}
variable "PrivateSubnetATag1" {
  default = "Network=Private"
  description = "tag to add to private subnets A, in format Key=Value (Optional)"
}
variable "PrivateSubnetATag2" {
  default = ""
  description = "tag to add to private subnets A, in format Key=Value (Optional)"
}
variable "PrivateSubnetATag3" {
  default = ""
  description = "tag to add to private subnets A, in format Key=Value (Optional)"
}
variable "PrivateSubnetBTag1" {
  default = "Network=Private"
  description = "tag to add to private subnets B, in format Key=Value (Optional)"
}
variable "PrivateSubnetBTag2" {
  default = ""
  description = "tag to add to private subnets B, in format Key=Value (Optional)"
}
variable "PrivateSubnetBTag3" {
  default = ""
  description = "tag to add to private subnets B, in format Key=Value (Optional)"
}
variable "PublicSubnet1CIDR" {
  default = "10.0.128.0/20"
  description = "CIDR block for the public DMZ subnet 1 located in Availability Zone 1"
}
variable "PublicSubnet2CIDR" {
  default = "10.0.144.0/20"
  description = "CIDR block for the public DMZ subnet 2 located in Availability Zone 2"
}
variable "PublicSubnet3CIDR" {
  default = "10.0.160.0/20"
  description = "CIDR block for the public DMZ subnet 3 located in Availability Zone 3"
}
variable "PublicSubnet4CIDR" {
  default = "10.0.176.0/20"
  description = "CIDR block for the public DMZ subnet 4 located in Availability Zone 4"
}
variable "PublicSubnetTag1" {
  default = "Network=Public"
  description = "tag to add to public subnets, in format Key=Value (Optional)"
}
variable "PublicSubnetTag2" {
  default = ""
  description = "tag to add to public subnets, in format Key=Value (Optional)"
}
variable "PublicSubnetTag3" {
  default = ""
  description = "tag to add to public subnets, in format Key=Value (Optional)"
}
variable "VPCCIDR" {
  default = "10.0.0.0/16"
  description = "CIDR block for the VPC"
}
variable "VPCTenancy" {
  default = "default"
  description = "The allowed tenancy of instances launched into the VPC"
}
