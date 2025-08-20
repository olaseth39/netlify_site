terraform {
  required_providers {              # use the Netlify provider(a plugin that knows how to talk to the Netlify API)
    netlify = {
      source  = "netlify/netlify"   # fetch the provider from the Terraform Registry
      #version = "~> 0.3.0"          # use version 0.4.x (safe minor upgrades)
    }
  }

  backend "remote" {            # tells Terraform where to store its state file remotely
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

resource "netlify_site" "example" {
  name   = var.my_terraform_site    # name of the Netlify site
  custom_domain = "" # leave empty for now, will set custom domain later
}

# deployment
resource "netlify_deploy" "example" {
  site_id    = netlify_site.example.id
  file       = "${path.module}/site.zip"    # upload the zip folder
  draft      = false
  functions  = null
}
