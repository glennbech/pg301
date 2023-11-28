## Oppgave 2


Når jeg fikk på plass dockerfilen fikk jeg responsen jeg var ute etter
```
FROM maven:3.6.3-jdk-11-slim AS build

WORKDIR /app
COPY pom.xml .

RUN mvn dependency:go-offline

COPY src /app/src

RUN mvn package -DskipTests

FROM openjdk:11-jre-slim

WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
```
Her ser du bilde av komandoene og hva de skriver ut

![image](img/opg2AA.png)
![image](img/opg2Ab.png)

**B**

for å gjennomføre denne oppgaven kreves det å forhåndslage et 
Elastic Container Repository(ECR). Det jeg opprettet kalte jeg:
[candidate2013](https://eu-west-1.console.aws.amazon.com/ecr/repositories/private/244530008913/candidate2013?region=eu-west-1)

her er yaml filen jeg laget for å gjennomføre det du spurte om

```
name: Build & Deploy ECR

on: 
  push:
    branches:
      - master

env:
  ECR_REPOSITORY: candidate2013
  AWS_REGION: eu-west-1
  TF_VAR_apprunner_name: candidate2013
  TF_VAR_instance_role_arn: "arn:aws:iam::244530008913:role/service-role/AppRunnerECRAccessRole"
  TF_VAR_access_role_arn: "arn:aws:iam::244530008913:role/service-role/AppRunnerECRAccessRole"
  TF_VAR_image_identifier: "244530008913.dkr.ecr.eu-west-1.amazonaws.com/candidate2013:latest"

jobs:
  build-and-push-ecr:
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/master'

    steps:
      - uses: actions/checkout@v2

      - name: AWS credentials
        uses: aws-actions/configure-aws-credentials@v1
        with:
          aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: eu-west-1

      - name: Login to AWS ECR
        id: login-ecr
        uses: aws-actions/amazon-ecr-login@v1
      
      - name: Set Image Tag
        run: |
          echo "IMAGE_TAG=$(git rev-parse --short=8 HEAD)" >> $GITHUB_ENV

      - name: Create Docker Image and Upload to ECR
        env:
          ECR_REGISTRY: ${{ steps.login-ecr.outputs.registry }} #IMAGE_TAG=${{ github rev-parse --short=8 HEAD}}
        run: |
          ECR_REGISTRY=${{ steps.login-ecr.outputs.registry }}
          docker build -t $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG .
          docker push $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG
          docker tag $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG $ECR_REGISTRY/$ECR_REPOSITORY:latest
          docker push $ECR_REGISTRY/$ECR_REPOSITORY:latest

  terraform-deploy:
    needs: build-and-push-ecr
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/master'
    
    steps:
      - uses: actions/checkout@v2
      
      - name: AWS credentials
        uses: aws-actions/configure-aws-credentials@v1
        with:
          aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: ${{ env.AWS_REGION }}
          
      - name: Setup Terraform
        uses: hashicorp/setup-terraform@v1

      - name: Terraform Init
        working-directory: ./infra
        run: terraform init -backend-config="bucket=bubucbucbucbbucbuc2013candidate2013" -backend-config="key=terraform/state"
        env:
          TF_LOG: DEBUG
          
      - name: Terraform Apply
        working-directory: ./infra
        run: terraform apply -auto-approve -input=false
        env:
          TF_LOG: DEBUG
          TF_VAR_apprunner_name: candidate2013
          TF_VAR_image_identifier: "244530008913.dkr.ecr.eu-west-1.amazonaws.com/candidate2013"
          TF_VAR_iam_role_name: role2013
          TF_VAR_iam_policy_name: policy2013
  
```