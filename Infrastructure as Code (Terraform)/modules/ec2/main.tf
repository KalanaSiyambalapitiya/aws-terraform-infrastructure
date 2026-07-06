resource "aws_instance" "devkln_ec2" {
    
    ami      = var.AMI_ID
    instance_type = "t3.micro"
    key_name = "kaldev-key"
    vpc_security_group_ids = [aws_security_group.ec2_sg.id]

    user_data = file("modules/ec2/user_data.sh") 

    tags = {
        Name = "first-ec2-instance"
        
        

    }

  
}
resource "aws_key_pair" "kaldev_key" {
    key_name = "kaldev-key"
    public_key = file("modules/ec2/keys1/kaldev-key.pub")
}
