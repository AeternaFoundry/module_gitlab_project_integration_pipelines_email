resource "gitlab_project_integration_pipelines_email" "project_integration_pipelines_emails" {
  for_each = var.project_integration_pipelines_emails

  project                      = each.value.project
  recipients                   = each.value.recipients
  branches_to_be_notified      = each.value.branches_to_be_notified
  notify_only_broken_pipelines = each.value.notify_only_broken_pipelines
}

