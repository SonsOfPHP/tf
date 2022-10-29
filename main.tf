terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~4.0"
    }
  }
}

provider "github" {
  owner = "SonsOfPHP"
}

###
# Organizational Settings
# @see https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_settings
#resource "github_organization_settings" "sonsofphp" {
#}

###
# Teams
# @see https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team
###
resource "github_team" "hang_arounds" {
  name = "Hang Arounds"
}
resource "github_team" "prospects" {
  name = "Prospects"
}
resource "github_team" "members" {
  name = "Members"
}
resource "github_team" "security" {
  name           = "Security"
  parent_team_id = github_team.members.id
}
resource "github_team" "terraform" {
  name           = "Terraform"
  parent_team_id = github_team.members.id
}

###
# Repositories
# @see https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
###
# Mother Repo
resource "github_repository" "sonsofphp" {
  name         = "sonsofphp"
  description  = "Mother Repository - All Development is done here"
  homepage_url = "https://sonsofphp.com"
  topics       = []

  visibility = "public"

  has_issues   = true
  has_projects = true
  has_wiki     = false
}
###
# Labels for the Mother Repo
# @see https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label

# Read Only Repositories for projects
resource "github_repository" "version" {
  name         = "version"
  description  = "[read-only]"
  homepage_url = "https://docs.sonsofphp.com/components/version"

  visibility = "public"

  has_issues   = false
  has_projects = true
  has_wiki     = false
}



# Additional Repositories
# docs
# tf
# symfony-sop


