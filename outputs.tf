output "project_integration_pipelines_emails_id" {
  description = "Map of id values across all project_integration_pipelines_emails, keyed the same as var.project_integration_pipelines_emails except keys with no id are omitted"
  value       = { for k, v in gitlab_project_integration_pipelines_email.project_integration_pipelines_emails : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_integration_pipelines_emails_branches_to_be_notified" {
  description = "Map of branches_to_be_notified values across all project_integration_pipelines_emails, keyed the same as var.project_integration_pipelines_emails except keys with no branches_to_be_notified are omitted"
  value       = { for k, v in gitlab_project_integration_pipelines_email.project_integration_pipelines_emails : k => v.branches_to_be_notified if v.branches_to_be_notified != null && length(v.branches_to_be_notified) > 0 }
}
output "project_integration_pipelines_emails_notify_only_broken_pipelines" {
  description = "Map of notify_only_broken_pipelines values across all project_integration_pipelines_emails, keyed the same as var.project_integration_pipelines_emails except keys with no notify_only_broken_pipelines are omitted"
  value       = { for k, v in gitlab_project_integration_pipelines_email.project_integration_pipelines_emails : k => v.notify_only_broken_pipelines if v.notify_only_broken_pipelines != null }
}
output "project_integration_pipelines_emails_project" {
  description = "Map of project values across all project_integration_pipelines_emails, keyed the same as var.project_integration_pipelines_emails except keys with no project are omitted"
  value       = { for k, v in gitlab_project_integration_pipelines_email.project_integration_pipelines_emails : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_integration_pipelines_emails_recipients" {
  description = "Map of recipients values across all project_integration_pipelines_emails, keyed the same as var.project_integration_pipelines_emails except keys with no recipients are omitted"
  value       = { for k, v in gitlab_project_integration_pipelines_email.project_integration_pipelines_emails : k => v.recipients if v.recipients != null && length(v.recipients) > 0 }
}

