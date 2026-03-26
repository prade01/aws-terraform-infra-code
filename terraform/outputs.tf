output "ecr_repo_url" {
  value = aws_ecr_repository.repo.repository_url
}

output "cluster_name" {
  value = aws_ecs_cluster.cluster.name
}

output "task_family" {
  value = aws_ecs_task_definition.task.family
}

output "sg_id" {
  value = aws_security_group.ecs_sg.id
}

output "subnet_id" {
  value = data.aws_subnets.default.ids[0]
}