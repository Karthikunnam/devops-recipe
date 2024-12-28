output "ecr_repo_url_app" {
    description = "app-repo-url"
    default = aws_ecr_repository.app.repository_url
}
output "ecr_repo_url_proxy" {
    description = "app-repo-url"
    default = aws_ecr_repository.PROXY.repository_url
}