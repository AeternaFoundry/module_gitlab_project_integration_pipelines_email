variable "project_integration_pipelines_emails" {
  description = <<EOT
Map of project_integration_pipelines_emails, attributes below
Required:
    - project
    - recipients
Optional:
    - branches_to_be_notified
    - notify_only_broken_pipelines
EOT

  type = map(object({
    project                      = string
    recipients                   = set(string)
    branches_to_be_notified      = optional(string)
    notify_only_broken_pipelines = optional(bool)
  }))
}

