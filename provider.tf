terraform {
  required_providers {
    konnect = {
      source  = "kong/konnect"
      version = "3.4.3"
    }
  }
}

provider "konnect" {
  personal_access_token =  var.personal_access_token
  server_url            = "https://us.api.konghq.com"
}   

