output "ecr_repo_url_app" {
    description = "app-repo-url"
    value = aws_ecr_repository.app.repository_url
}
output "ecr_repo_url_proxy" {
    description = "proxy-repo-url"
    value = aws_ecr_repository.proxy.repository_url
}