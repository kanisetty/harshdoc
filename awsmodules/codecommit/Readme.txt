To create repositories in codecommit follow the below steps
Note: we can create repositories in "code commit" with main aws  user but we can't use this user for clone and other operations so please create user in IAM and provide management console access to create 

1)loginto aws with management console (sign in with  root access console)
2)create IAM user with below steps

select IAM 
click on "Users"
click on "Add User"
enter the user name which you wanted to create
check the box for below options
      Programmatic access
      AWS Management Console access
select Custom password  from console password and set password for the user to login and click on "Next:Permissions" 

click on "Attach existing policies directly"

search policies with below text and add below policies
AWSCodeCommitFullAccess
IAMSelfManageServiceSpecificCredentials
IAMUserChangePassword
IAMReadOnlyAccess

click on "Review"  and  clickon "Create User"

with the above steps user will be created 

you can verity by IAM->Users

Now click on "Dashboard" and copy IAM users sign-in link: 
ex: https://111922932915.signin.aws.amazon.com/console
login with the user we created and enter correct password

Now goto "codecommit' and click on "create repository"

specify "Repository name" and "Description" and click on "Createrepository"

once you do above steps, git reposiroty will be created so you can clone it either through "HTTPS" or "SSH" 
if it is HTTPS you have to get credentials from IAM->users->click on username->click on "Security credentials" tab->from "HTTPS Git credentials for AWS CodeCommit" click on Generate 
This can provide username and password, use those credentials for clone,pull and push operations 


