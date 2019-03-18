# Dev Environment

1. Export DigitalOcean API Token to use
  - `$ export TF_VAR_do_token=****************`
  - _(OPTIONAL)_ Export Custom Image to use; Defaults to `vermilion-ubuntu-18.04-base`
    - `$ export TF_VAR_image=44854255`

2. Initialize Terraform Environment
  - `$ terraform init`

3. Validate Terraform
  - `$ terraform validate`

4. Plan Terraform
  - `$ terraform plan`

5. Apply Terraform
  - `$ terraform apply`

6. Destroy Terraform
  - `$ terraform destroy`
