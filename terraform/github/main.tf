resource "github_repository" "openqa" {
  name        = var.repository_name
  description = var.repository_description
  visibility  = var.visibility
}

# Add multiple collaborators to the repository using for_each
resource "github_repository_collaborator" "openqa_collaborators" {
  for_each   = var.collaborators
  # repository = can(data.github_repository.existing_repo.id) ? data.github_repository.existing_repo.name : github_repository.openqa[0].name
  repository = try(
    data.github_repository.existing_repo.name,
    github_repository.openqa.name
  )
  username   = each.key  # Username of the collaborator
  permission = each.value  # Permission level for the collaborator (pull, push, or admin)
  
  depends_on = [github_repository.openqa]
}