vpc_cidr_block    = "192.168.0.0/16"
subnet_cidr_block = ["192.168.0.0/22", "192.168.4.0/22"]
az                = ["ap-southeast-1a", "ap-southeast-1b"]
assign_pub_ip     = true
ami_id            = "ami-0be9cb9f67c8dabd6"
ins_type          = "t3.micro"
key_pair          = "id_rsa"
no_public_ip      = false
