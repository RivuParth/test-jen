name = "sql-server"
instance_type          = "t2.micro"
key_name               = "user1"
monitoring             = true
vpc_security_group_ids = ["sg-12345678"]
subnet_id              = "subnet-eddcdzz4"

tags = {
    Terraform   = "true"
    Environment = "cert"
}