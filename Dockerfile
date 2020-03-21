ARG TERRAFORM=latest

FROM hashicorp/terraform:${TERRAFORM} AS validate
WORKDIR /var/task/
COPY *.tf /var/task/
RUN terraform init
RUN terraform fmt -check
ARG AWS_DEFAULT_REGION=us-east-1
RUN terraform validate
