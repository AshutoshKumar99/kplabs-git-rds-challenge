resource "aws_db_instance" "default" {
  allocated_storage    = 5
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo" # When you create RDS, you give usernamd and password
  #password             = "mysecretpassword505" # Never store Passwords/API Keys/Any type of secrets within git repo, Instead of writing password here, you can use kind of interpolation function.
  password             = file("../rds_password.txt") # File rds_password.txt is not in the git repo,it is outside of the repo, so It will not be committed.File function will read the contents of the file rds_password.txt
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = "true"
}
