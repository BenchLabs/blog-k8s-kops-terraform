# Deploying Kubernetes clusters with kops and Terraform

Deploy a Kubernetes cluster using Terraformed AWS resources and kops. Used for the blog post https://medium.com/bench-engineering/deploying-kubernetes-clusters-with-kops-and-terraform-832b89250e8e

## Requirements

* jq
* kops
* kubectl
* terraform

## Usage

Edit `terraform/main.tf` with your local variables (details in the blog post above)

From the `terraform` directory run:

    terraform init
    terraform plan
    terraform apply
    
Then from the `kubernetes-cluster` dir run:

    ./regen-cluster.sh
    terraform plan
    terraform apply   
