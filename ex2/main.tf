provider "aws" {
  access_key = "ASIA3J7HLVMMNJTLGIX3"
  secret_key = "B1qWQQE8otYc95b++ugb9mYlknBho3pmp/Fz3GUC"
  token = "FwoGZXIvYXdzEL3//////////wEaDFZMRiJ5/i8GL211nCLVAYCdkBpklB33/kQCs+eMC4Gr0bLVVmma/kBhnNwTIw8Cv5btWMwjonoTG3qVW8mFa9lbFKKF1ZHRADFT63o5u6rnBbYdnT+W1cI224ajidrOs25b1y/9LKRl4ru/0Z4Hem8vobPZ8vL9nMIl/7IgjtXu+Hx4d5sIEvVNUh0Wt9JOcqnAEXoXwwT57W14VUuaohA+h9me3hMbbQn3vTZglnSHRJrKClXOw8wak575p1ukzwX0wIaW9MmI4fkZJNiZ6scnnhVHqh9Mu+dCjnxbeAYq1hfDMyierPKUBjItTybuhLPX5pkC6B7ERpgvXtbJU4kF4gMkl7/tA3hRriwhA6hq2tAiqf5taNvm"
  region = "us-east-1"
}



 
data "archive_file" "zip_the_python_code" {
type        = "zip"
source_file  = "greet_lambda.py"
output_path = "greet_lambda.zip"
}
 
resource "aws_lambda_function" "terraform_lambda_func" {
filename                       = "greet_lambda.zip"
function_name                  = "Spacelift_Test_Lambda_Function"
role                           = "arn:aws:iam::777337416472:role/robomaker_students"
handler                        = "greet_lambda.lambda_handler"
runtime                        = "python3.8"

}