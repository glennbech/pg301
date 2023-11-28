## Oppgave 3

## A

Fiks for hardkoding av service navn:
```
resource "aws_apprunner_service" "service" {
  service_name = var.apprunner_name
```
Fisk for justering av cpu og minne:
```
instance_configuration {  # cpu?
    instance_role_arn = aws_iam_role.role_for_apprunner_service.arn
    cpu = 256
    memory = 1024
  }
```

Variabler jeg gjorde om fra hardkodet til variabler:

```
variable "access_role_arn" {
  description = "ARN for access role used in App Runner"
  type        = string
}

variable "image_identifier" {
  description = "Identifier for the Docker image in ECR"
  type        = string
}

variable "iam_role_name" {
  description = "Name of the IAM role for App Runner service"
  type        = string
}

variable "iam_policy_name" {
  description = "Name of the IAM policy for App Runner service"
  type        = string
}
```


Jeg slet litt med å få de variablene jeg omgjorde fra hardkodede til å 
fungere. De gikk de seg til tilslutt derimot :)


## B

Disse kan justeres slik du foretrekker:
- TF_VAR_apprunner_name: candidate2013
- TF_VAR_image_identifier: "244530008913.dkr.ecr.eu-west-1.amazonaws.com/candidate2013"
- TF_VAR_iam_role_name: role2013
- TF_VAR_iam_policy_name: policy2013

![image](img/greenboth-3.png)


Her ser du hva den ble kalt på ecr. De stemmer overens, litt usikker på hvor
3-tallet på slutten kommer fra derimot. Mulig jeg har en typo et sted... Heldigvis
vet vi at den tar taggen iallefall! :)

![image](img/ecr.png)
