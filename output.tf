output "site_url" {
  description = "The Netlify live site URL"
  value       = data.netlify_site.example.url
}


# resource "random_pet" "suffix" {}

# output "unique_name" {
#   value = "my-site-${random_pet.suffix.id}"
# }