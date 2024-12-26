# output "existing_repo_name" {
#   value = try(data.github_repository.existing_repo.name, "not found")
# }

# output "new_repo_name" {
#   value = try(github_repository.openqa[0].name, "not created")
# }

# output "repository_url" {
#   value = try(github_repository.openqa[0].html_url, "not found")
# }