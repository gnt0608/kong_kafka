# kong_kafka

# Usage

1. prepare variables file
```HCL:vars.tfvars
personal_access_token="(Kong Personal Access Token)"
control_plane_name="(Control Plane name)"
```


2. init
```
terraform init
```

3. apply
```
terraform apply -var-file=vars.tfvars
``` 