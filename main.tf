variable "github_token" {
  type      = string
  sensitive = true
}

variable "github_readonly_repos" {
  type = map(object({
    name         = string
    description  = string
    homepage_url = string
    topics       = list(string)
  }))
  default = {
    bard = {
      name         = "bard"
      description  = "[read-only] Tool that helps manage monorepos"
      homepage_url = "https://docs.sonsofphp.com/bard"
      topics       = ["bard-php", "monorepo", "php", "php8"]
    },
    clock = {
      name         = "clock"
      description  = "[read-only] Lightweight clock implementation to abstract away using PHP's DateTime objects"
      homepage_url = "https://docs.sonsofphp.com/components/clock"
      topics       = ["clock", "date", "datetime", "php", "php-clock", "php-library", "psr-20", "time"]
    },
    cqrs = {
      name         = "cqrs"
      description  = "[read-only] CQRS to help get you up and running quickly"
      homepage_url = "https://docs.sonsofphp.com/components/cqrs"
      topics       = ["command-query-response-segregation", "cqrs", "php", "php-cqrs"]
    },
    cqrs_bundle = {
      name         = "cqrs-bundle"
      description  = "[read-only] Symfony CQRS Bundle"
      homepage_url = "https://docs.sonsofphp.com/components/cqrs"
      topics       = ["sonsofphp", "cqrs", "php", "symfony", "symfony-bundle"]
    },
    cqrs_symfony = {
      name         = "cqrs-symfony"
      description  = "[read-only] Adds additional functionality to the sonsofphp/cqrs package"
      homepage_url = "https://docs.sonsofphp.com/components/cqrs"
      topics       = ["bridge", "cqrs", "php", "symfony"]
    },
    event_dispatcher = {
      name         = "event-dispatcher"
      description  = "[read-only] Event Dispatcher Component"
      homepage_url = "https://docs.sonsofphp.com/components/event-dispatcher"
      topics       = ["event-dispatcher", "php", "php-library", "psr-14"]
    },
    event_sourcing = {
      name         = "event-sourcing"
      description  = "[read-only] event sourcing component"
      homepage_url = "https://docs.sonsofphp.com/components/event-sourcing"
      topics       = ["event-sourcing", "event-store", "php", "php-event-sourcing", "php-library"]
    },
    event_sourcing_doctrine = {
      name         = "event-sourcing-doctrine"
      description  = "[read-only] Provides additional functionality to sonsofphp/event-sourcing package"
      homepage_url = "https://docs.sonsofphp.com/components/event-sourcing"
      topics       = ["doctrine-dbal", "doctrine-orm", "event-sourcing", "php"]
    },
    event_sourcing_symfony = {
      name         = "event-sourcing-symfony"
      description  = "[read-only] Provides additional functionality to sonsofphp/event-sourcing package"
      homepage_url = "https://docs.sonsofphp.com/components/event-sourcing"
      topics       = ["event-bus", "event-sourcing", "php", "symfony"]
    },
    feature_toggle = {
      name         = "feature-toggle"
      description  = "[read-only] Feature Toggles for PHP"
      homepage_url = "https://docs.sonsofphp.com/components/feature-toggle"
      topics       = ["feature-flags", "feature-toggles", "php", "php-library", "toggles"]
    },
    filesystem = {
      name         = "filesystem"
      description  = "[read-only] Abstract Filesystem that can be used with various services"
      homepage_url = "https://docs.sonsofphp.com/components/filesystem"
      topics       = ["php", "php-library", "filesystem", "virtual-filesystem"]
    },
    json = {
      name         = "json"
      description  = "[read-only] Provides json wrapper"
      homepage_url = "https://docs.sonsofphp.com/components/json"
      topics       = ["json", "json-decoder", "json-encoder", "php"]
    },
    money = {
      name         = "money"
      description  = "[read-only] Use when dealing with Money in PHP"
      homepage_url = "https://docs.sonsofphp.com/components/money"
      topics       = ["currencies", "currency", "iso-4217", "library", "monetary", "money", "php", "php-money"]
    },
    version = {
      name         = "version"
      description  = "[read-only] Compare and manage versions using the semver standard"
      homepage_url = "https://docs.sonsofphp.com/components/version"
      topics       = ["php", "semver", "version", "version-parser"]
    }
  }
}

# @todo Implement labels for the mother repo
variable "github_sonsofphp_labels" {
    type = map(object({
        name        = string
        color       = string
        description = string
    }))

    default = {
        Filesystem = {
            name = "Filesystem"
            color = "5319e7"
            description = "Issues related to Filesystem Component"
        }
    }
}

# @todo Manage the membership
variable "github_admins" {
    default = ["JoshuaEstes"]
}
variable "github_members" {
    default = []
}

# @todo Manage teams and membership to those teams
variable "github_teams" {
    default = ["Members"]
}

terraform {
  cloud {
    organization = "SonsOfPHP"

    workspaces {
      name = "gh-actions"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~>5.0"
    }
  }
}

provider "github" {
  owner = "SonsOfPHP"
  token = var.github_token
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
  name    = "Hang Arounds"
  privacy = "closed"
}
resource "github_team" "prospects" {
  name    = "Prospects"
  privacy = "closed"
}
resource "github_team" "members" {
  name    = "Members"
  privacy = "closed"
}
resource "github_team" "security" {
  name           = "Security"
  description    = "Individuals responsible for the security of all things"
  privacy        = "closed"
  parent_team_id = github_team.members.id
}
resource "github_team" "terraform" {
  name           = "Terraform"
  privacy        = "closed"
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
  homepage_url = "https://docs.sonsofphp.com"
  topics = [
    "bard-php",
    "clock",
    "cqrs",
    "event-dispatcher",
    "event-sourcing",
    "feature-flags",
    "hacktoberfest",
    "json",
    "money",
    "php",
    "php-library",
    "php7",
    "php8",
    "psr-14",
    "psr-20",
    "sons-of-php",
    "sonsofphp",
  ]
  visibility             = "public"
  vulnerability_alerts   = true
  delete_branch_on_merge = true
  has_downloads          = true
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  allow_merge_commit     = false
  allow_rebase_merge     = false
  has_discussions        = true

  allow_squash_merge          = true
  squash_merge_commit_title   = "PR_TITLE"
  squash_merge_commit_message = "PR_BODY"

  pages {
    cname = "docs.sonsofphp.com"
    source {
      branch = "gh-pages"
      path   = "/"
    }
  }
}
###
# Labels for the Mother Repo
# @see https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label

# Read Only Repositories for projects
resource "github_repository" "readonly" {
  for_each      = var.github_readonly_repos
  name          = each.value.name
  description   = each.value.description
  homepage_url  = each.value.homepage_url
  topics        = each.value.topics
  visibility    = "public"
  has_issues    = false
  has_projects  = false
  has_wiki      = false
  has_downloads = false
}

# Additional Repositories
resource "github_repository" "symfony_sop" {
  name                   = "symfony-sop"
  description            = "Symfony Template Repository for base projects"
  homepage_url           = "https://docs.sonsofphp.com"
  visibility             = "public"
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  has_downloads          = false
  is_template            = true
  vulnerability_alerts   = true
  allow_auto_merge       = true
  delete_branch_on_merge = true
  topics = [
    "domain-driven-design",
    "hacktoberfest",
    "hexagonal-architecture",
    "symfony",
    "template",
  ]
}
