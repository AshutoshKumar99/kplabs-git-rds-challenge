It is not a very idel practice to commit tfstate file(You can see that password is still showing there),even though you are using some kind find of a 
function(File function to get password value)
password = file("../rds_password.txt")

We should use diffrent approache where we do not commiting teraform.tfstate file within the git repo. We will look more into how we can move the terraform.tfstate file out of git
repo but in such a way it can still enable the team collaboration. 

rds_password is not within the git repo and is not committted though.
