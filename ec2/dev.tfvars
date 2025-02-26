name                   = "sql-server"
ami = "ami-0f4f6fd19fad11737"
instance_type          = "t2.micro"
key_name               = "rana-mumbai"
monitoring             = true
vpc_security_group_ids = ["sg-0ef9640e1e726d2c9"]
subnet_id              = "subnet-05037ba179c253f7d"

tags = {
  Terraform   = "true"
  Environment = "dev"
}