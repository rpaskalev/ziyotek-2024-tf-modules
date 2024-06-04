module "lambda" {
    #don't need to account for "prod" environment
    count = var.environment == "sbx1" ? 1 : 0
    function_name = "my_lambda_function"
    handler = "index.handler"
}