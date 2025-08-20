output "site_url" {
  description = "The Netlify live site URL"
  value       = data.netlify_site.example.ssl
}


