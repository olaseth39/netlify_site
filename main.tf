terraform {
  required_providers {              # use the Netlify provider(a plugin that knows how to talk to the Netlify API)
    netlify = {
      source  = "netlify/netlify"   # fetch the provider from the Terraform Registry
      #version = "~> 0.3.0"          # use version 0.4.x (safe minor upgrades)
    }
  }

  cloud {                         # tells Terraform where to store its state file remotely
      organization = "dev_seth"   # HCP Terraform organization name
      workspaces {
      name = "netlify-site"
    }
  }
}

# Tell Terraform to use the Netlify provider
provider "netlify" {
  token = var.netlify_token  # Netlify API token
}

data "netlify_site" "example" {
  name = var.site_name
}


# deployment
# resource "netlify_deploy" "example" {
#   site_id    = data.netlify_site.example.id
#   file       = "${path.module}/site.zip"    # upload the zip folder
#   draft      = false
#   functions  = null
# }
