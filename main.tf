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
    # Projects
    bard = {
      name         = "bard"
      description  = "[read-only] Tool that helps manage monorepos"
      homepage_url = "https://docs.sonsofphp.com/bard"
      topics       = ["sonsofphp", "sons-of-php", "bard-php", "monorepo", "php", "php8"]
    },
    prospect = {
      name         = "prospect"
      description  = "[read-only] PHP Framework"
      homepage_url = "https://docs.sonsofphp.com/prospect"
      topics       = ["sonsofphp", "sons-of-php", "php", "framework"]
    },
    # Bridges
    cqrs_symfony = {
      name         = "cqrs-symfony"
      description  = "[read-only] Adds additional functionality to the sonsofphp/cqrs package"
      homepage_url = "https://docs.sonsofphp.com/components/cqrs"
      topics       = ["sonsofphp", "sons-of-php", "bridge", "cqrs", "php", "symfony"]
    },
    event_sourcing_symfony = {
      name         = "event-sourcing-symfony"
      description  = "[read-only] Provides additional functionality to sonsofphp/event-sourcing package"
      homepage_url = "https://docs.sonsofphp.com/components/event-sourcing"
      topics       = ["sonsofphp", "sons-of-php", "event-bus", "event-sourcing", "php", "symfony"]
    },
    filesystem_aws = {
      name         = "filesystem-aws"
      description  = "[read-only] Additional Filesystem adapters for AWS"
      homepage_url = "https://docs.sonsofphp.com/components/filesystem"
      topics       = ["sonsofphp", "sons-of-php", "php", "aws", "s3"]
    },
    filesystem_liip_imagine = {
      name         = "filesystem-liip-imagine"
      description  = "[read-only] Can use Filesystem with the liip imagine library"
      homepage_url = "https://docs.sonsofphp.com/components/filesystem"
      topics       = ["sonsofphp", "sons-of-php", "php", "liip", "imagine-bundle"]
    },
    money_twig = {
      name         = "money-twig"
      description  = "[read-only] Use when dealing with Money in PHP and Twig"
      homepage_url = "https://docs.sonsofphp.com/components/money"
      topics       = ["sonsofphp", "sons-of-php", "currencies", "currency", "iso-4217", "library", "monetary", "money", "php", "php-money", "twig"]
    },
    pager-doctrine-collections = {
      name         = "pager-doctrine-collections"
      description  = "[read-only] Pager Component that uses doctrine/common"
      homepage_url = "https://docs.sonsofphp.com/components/pager"
      topics       = ["sonsofphp", "sons-of-php", "php", "php-pager", "pager", "pagination"]
    },
    pager-doctrine-dbal = {
      name         = "pager-doctrine-dbal"
      description  = "[read-only] Pager Component that uses doctrine/dbal"
      homepage_url = "https://docs.sonsofphp.com/components/pager"
      topics       = ["sonsofphp", "sons-of-php", "php", "php-pager", "pager", "pagination"]
    },
    pager-doctrine-orm = {
      name         = "pager-doctrine-orm"
      description  = "[read-only] Pager Component that uses doctrine/orm"
      homepage_url = "https://docs.sonsofphp.com/components/pager"
      topics       = ["sonsofphp", "sons-of-php", "php", "php-pager", "pager", "pagination"]
    },
    pager-twig = {
      name         = "pager-twig"
      description  = "[read-only] Adds support for twig"
      homepage_url = "https://docs.sonsofphp.com/components/pager"
      topics       = ["sonsofphp", "sons-of-php", "php", "php-pager", "pager", "pagination", "twig"]
    },
    # Bundles
    clock_bundle = {
      name         = "clock-bundle"
      description  = "[read-only] Symfony Clock Bundle"
      homepage_url = "https://docs.sonsofphp.com/components/clock"
      topics       = ["sonsofphp", "sons-of-php", "php", "symfony", "symfony-bundle", "clock"]
    },
    cqrs_bundle = {
      name         = "cqrs-bundle"
      description  = "[read-only] Symfony CQRS Bundle"
      homepage_url = "https://docs.sonsofphp.com/components/cqrs"
      topics       = ["sonsofphp", "sons-of-php", "cqrs", "php", "symfony", "symfony-bundle"]
    },
    feature_toggle_bundle = {
      name         = "feature-toggle-bundle"
      description  = "[read-only] Symfony Feature Toggle Bundle"
      homepage_url = "https://docs.sonsofphp.com/components/feature-toggle"
      topics       = ["sonsofphp", "sons-of-php", "php", "symfony", "symfony-bundle", "feature-toggle"]
    },
    money_bundle = {
      name         = "money-bundle"
      description  = "[read-only] Symfony Money Bundle"
      homepage_url = "https://docs.sonsofphp.com/components/money"
      topics       = ["sonsofphp", "sons-of-php", "php", "symfony", "symfony-bundle", "money"]
    },
    pager_bundle = {
      name         = "pager-bundle"
      description  = "[read-only] Symfony Pager Bundle"
      homepage_url = "https://docs.sonsofphp.com/components/pager"
      topics       = ["sonsofphp", "sons-of-php", "php", "symfony", "symfony-bundle", "pager"]
    },
    # Components
    assert = {
      name         = "assert"
      description  = "[read-only] Assert component"
      homepage_url = "https://docs.sonsofphp.com/components/assert"
      topics       = ["sonsofphp", "sons-of-php", "php", "assert"]
    },
    attribute = {
      name         = "attribute"
      description  = "[read-only] Attribute component"
      homepage_url = "https://docs.sonsofphp.com/components/attribute"
      topics       = ["sonsofphp", "sons-of-php", "php", "attribute"]
    },
    cache = {
      name         = "cache"
      description  = "[read-only] Cache component"
      homepage_url = "https://docs.sonsofphp.com/components/cache"
      topics       = ["sonsofphp", "sons-of-php", "php", "psr-6", "psr-16", "cache", "simple-cache", "cache-implementation"]
    },
    clock = {
      name         = "clock"
      description  = "[read-only] Lightweight clock implementation to abstract away using PHP's DateTime objects"
      homepage_url = "https://docs.sonsofphp.com/components/clock"
      topics       = ["sonsofphp", "sons-of-php", "clock", "date", "datetime", "php", "php-clock", "php-library", "psr-20", "time"]
    },
    container = {
      name         = "container"
      description  = "[read-only] Container Component (PSR-11)"
      homepage_url = "https://docs.sonsofphp.com/components/container"
      topics       = ["sonsofphp", "sons-of-php", "php", "container", "psr-11", "psr11"]
    },
    cookie = {
      name         = "cookie"
      description  = "[read-only] Cookie Component"
      homepage_url = "https://docs.sonsofphp.com/components/cookie"
      topics       = ["sonsofphp", "sons-of-php", "php", "cookie"]
    },
    cqrs = {
      name         = "cqrs"
      description  = "[read-only] CQRS to help get you up and running quickly"
      homepage_url = "https://docs.sonsofphp.com/components/cqrs"
      topics       = ["sonsofphp", "sons-of-php", "command-query-response-segregation", "cqrs", "php", "php-cqrs"]
    },
    event_dispatcher = {
      name         = "event-dispatcher"
      description  = "[read-only] Event Dispatcher Component"
      homepage_url = "https://docs.sonsofphp.com/components/event-dispatcher"
      topics       = ["sonsofphp", "sons-of-php", "event-dispatcher", "php", "php-library", "psr-14"]
    },
    event_sourcing = {
      name         = "event-sourcing"
      description  = "[read-only] event sourcing component"
      homepage_url = "https://docs.sonsofphp.com/components/event-sourcing"
      topics       = ["sonsofphp", "sons-of-php", "event-sourcing", "event-store", "php", "php-event-sourcing", "php-library"]
    },
    event_sourcing_doctrine = {
      name         = "event-sourcing-doctrine"
      description  = "[read-only] Provides additional functionality to sonsofphp/event-sourcing package"
      homepage_url = "https://docs.sonsofphp.com/components/event-sourcing"
      topics       = ["sonsofphp", "sons-of-php", "doctrine-dbal", "doctrine-orm", "event-sourcing", "php"]
    },
    feature_toggle = {
      name         = "feature-toggle"
      description  = "[read-only] Feature Toggles for PHP"
      homepage_url = "https://docs.sonsofphp.com/components/feature-toggle"
      topics       = ["sonsofphp", "sons-of-php", "feature-flags", "feature-toggles", "php", "php-library", "toggles"]
    },
    filesystem = {
      name         = "filesystem"
      description  = "[read-only] Abstract Filesystem that can be used with various services"
      homepage_url = "https://docs.sonsofphp.com/components/filesystem"
      topics       = ["sonsofphp", "sons-of-php", "php", "php-library", "filesystem", "virtual-filesystem"]
    },
    gateway = {
      name         = "gateway"
      description  = "[read-only] Gateway"
      homepage_url = "https://docs.sonsofphp.com/components/gateway"
      topics       = ["sonsofphp", "sons-of-php", "php", "php-library", "gateway", "payment-processing"]
    },
    http_client = {
      name         = "http-client"
      description  = "[read-only] http-client component"
      homepage_url = "https://docs.sonsofphp.com/components/http-client"
      topics       = ["sonsofphp", "sons-of-php", "php", "php-library", "psr-18", "http-client"]
    },
    http_factory = {
      name         = "http-factory"
      description  = "[read-only] http-factory component"
      homepage_url = "https://docs.sonsofphp.com/components/http-factory"
      topics       = ["sonsofphp", "sons-of-php", "php", "php-library", "psr-17", "http-factory"]
    },
    http-handler = {
      name         = "http-handler"
      description  = "[read-only] HttpHandler component"
      homepage_url = "https://docs.sonsofphp.com/components/http-handler"
      topics       = ["sonsofphp", "sons-of-php", "php", "psr-15", "http-handler"]
    },
    http_message = {
      name         = "http-message"
      description  = "[read-only] http-message component"
      homepage_url = "https://docs.sonsofphp.com/components/http-message"
      topics       = ["sonsofphp", "sons-of-php", "php", "php-library", "psr-7", "http-message"]
    },
    json = {
      name         = "json"
      description  = "[read-only] Provides json wrapper"
      homepage_url = "https://docs.sonsofphp.com/components/json"
      topics       = ["sonsofphp", "sons-of-php", "php", "json", "json-decoder", "json-encoder"]
    },
    link = {
      name         = "link"
      description  = "[read-only] Link Component (PSR-13)"
      homepage_url = "https://docs.sonsofphp.com/components/link"
      topics       = ["sonsofphp", "sons-of-php", "php", "psr-13"]
    },
    logger = {
      name         = "logger"
      description  = "[read-only] PHP Logger (PSR-3 Compatible)"
      homepage_url = "https://docs.sonsofphp.com/components/logger"
      topics       = ["sonsofphp", "sons-of-php", "php", "psr-3", "logger"]
    },
    mailer = {
      name         = "mailer"
      description  = "[read-only] Mailer Component"
      homepage_url = "https://docs.sonsofphp.com/components/mailer"
      topics       = ["sonsofphp", "sons-of-php", "php", "mailer"]
    },
    money = {
      name         = "money"
      description  = "[read-only] Use when dealing with Money in PHP"
      homepage_url = "https://docs.sonsofphp.com/components/money"
      topics       = ["sonsofphp", "sons-of-php", "currencies", "currency", "iso-4217", "library", "monetary", "money", "php", "php-money"]
    },
    pager = {
      name         = "pager"
      description  = "[read-only] Pager Component"
      homepage_url = "https://docs.sonsofphp.com/components/pager"
      topics       = ["sonsofphp", "sons-of-php", "php", "php-pager", "pager", "pagination"]
    },
    registry = {
      name         = "registry"
      description  = "[read-only] Registry Component"
      homepage_url = "https://docs.sonsofphp.com/components/registry"
      topics       = ["sonsofphp", "sons-of-php", "php", "registry"]
    },
    router = {
      name         = "router"
      description  = "[read-only] Router Component"
      homepage_url = "https://docs.sonsofphp.com/components/router"
      topics       = ["sonsofphp", "sons-of-php", "php", "router"]
    },
    search = {
      name         = "search"
      description  = "[read-only] Search Component"
      homepage_url = "https://docs.sonsofphp.com/components/search"
      topics       = ["sonsofphp", "sons-of-php", "php", "php-search"]
    },
    session = {
      name         = "session"
      description  = "[read-only] Session Component"
      homepage_url = "https://docs.sonsofphp.com/components/session"
      topics       = ["sonsofphp", "sons-of-php", "php", "session"]
    },
    state-machine = {
      name         = "state-machine"
      description  = "[read-only] State Machine Component"
      homepage_url = "https://docs.sonsofphp.com/components/state-machine"
      topics       = ["sonsofphp", "sons-of-php", "php", "state-machine"]
    },
    stdlib = {
      name         = "stdlib"
      description  = "[read-only] Standard Library"
      homepage_url = "https://docs.sonsofphp.com/components/stdlib"
      topics       = ["sonsofphp", "sons-of-php", "php", "stdlib"]
    },
    user-agent = {
      name         = "user-agent"
      description  = "[read-only] User Agent"
      homepage_url = "https://docs.sonsofphp.com/components/user-agent"
      topics       = ["sonsofphp", "sons-of-php", "php", "useragent", "user-agent"]
    },
    validator = {
      name         = "validator"
      description  = "[read-only] Validator"
      homepage_url = "https://docs.sonsofphp.com/components/validator"
      topics       = ["sonsofphp", "sons-of-php", "php", "validator"]
    },
    version = {
      name         = "version"
      description  = "[read-only] Compare and manage versions using the semver standard"
      homepage_url = "https://docs.sonsofphp.com/components/version"
      topics       = ["sonsofphp", "sons-of-php", "php", "semver", "version", "version-parser"]
    },
    # Contracts
    attribute-contract = {
      name         = "attribute-contract"
      description  = "[read-only] Attribute Contract"
      homepage_url = "https://docs.sonsofphp.com/contracts/attribute"
      topics       = ["sonsofphp", "sons-of-php", "php", "attribute"]
    },
    cookie-contract = {
      name         = "cookie-contract"
      description  = "[read-only] Cookie Contract"
      homepage_url = "https://docs.sonsofphp.com/contracts/cookie"
      topics       = ["sonsofphp", "sons-of-php", "php", "cookie"]
    },
    common_contract = {
      name         = "common-contract"
      description  = "[read-only] Generic PHP Interfaces"
      homepage_url = "https://docs.sonsofphp.com/contracts/common"
      topics       = ["sonsofphp", "sons-of-php", "php", "stdlib"]
    },
    cqrs_contract = {
      name         = "cqrs-contract"
      description  = "[read-only] CQRS Contacts"
      homepage_url = "https://docs.sonsofphp.com/contracts/cqrs"
      topics       = ["sonsofphp", "sons-of-php", "php", "cqrs"]
    },
    event_sourcing_contract = {
      name         = "event-sourcing-contract"
      description  = "[read-only] Event Sourcing Contacts"
      homepage_url = "https://docs.sonsofphp.com/contracts/event-sourcing"
      topics       = ["sonsofphp", "sons-of-php", "php", "event-sourcing"]
    },
    feature_toggle_contract = {
      name         = "feature-toggle-contract"
      description  = "[read-only] Feature Toggle Contacts"
      homepage_url = "https://docs.sonsofphp.com/contracts/feature-toggle"
      topics       = ["sonsofphp", "sons-of-php", "php", "feature-toggle"]
    },
    filesystem_contract = {
      name         = "filesystem-contract"
      description  = "[read-only] Virtual Filesystem Contacts"
      homepage_url = "https://docs.sonsofphp.com/contracts/filesystem"
      topics       = ["sonsofphp", "sons-of-php", "php", "virtual-filesystem"]
    },
    gateway-contract = {
      name         = "gateway-contract"
      description  = "[read-only] Gateway Contract"
      homepage_url = "https://docs.sonsofphp.com/contracts/gateway"
      topics       = ["sonsofphp", "sons-of-php", "php", "gateway", "payment-processing"]
    },
    http-handler-contract = {
      name         = "http-handler-contract"
      description  = "[read-only] Http Handler Contacts"
      homepage_url = "https://docs.sonsofphp.com/contracts/http-handler"
      topics       = ["sonsofphp", "sons-of-php", "php", "http-handler"]
    },
    logger_contract = {
      name         = "logger-contract"
      description  = "[read-only] Logger Contacts"
      homepage_url = "https://docs.sonsofphp.com/contracts/logger"
      topics       = ["sonsofphp", "sons-of-php", "php", "logger"]
    },
    mailer-contract = {
      name         = "mailer-contract"
      description  = "[read-only] Mailer Contact"
      homepage_url = "https://docs.sonsofphp.com/contracts/mailer"
      topics       = ["sonsofphp", "sons-of-php", "php", "mailer"]
    },
    money_contract = {
      name         = "money-contract"
      description  = "[read-only] Money Contacts"
      homepage_url = "https://docs.sonsofphp.com/contracts/money"
      topics       = ["sonsofphp", "sons-of-php", "php", "money"]
    },
    pager-contract = {
      name         = "pager-contract"
      description  = "[read-only] Pager Contacts"
      homepage_url = "https://docs.sonsofphp.com/contracts/pager"
      topics       = ["sonsofphp", "sons-of-php", "php", "pager", "pagination"]
    },
    registry-contract = {
      name         = "registry-contract"
      description  = "[read-only] Registry Contacts"
      homepage_url = "https://docs.sonsofphp.com/contracts/registry"
      topics       = ["sonsofphp", "sons-of-php", "php", "registry"]
    },
    router-contract = {
      name         = "router-contract"
      description  = "[read-only] Router Contacts"
      homepage_url = "https://docs.sonsofphp.com/contracts/router"
      topics       = ["sonsofphp", "sons-of-php", "php", "router"]
    },
    search-contract = {
      name         = "search-contract"
      description  = "[read-only] Search Contact"
      homepage_url = "https://docs.sonsofphp.com/contracts/search"
      topics       = ["sonsofphp", "sons-of-php", "php", "search"]
    },
    session-contract = {
      name         = "session-contract"
      description  = "[read-only] Session Contact"
      homepage_url = "https://docs.sonsofphp.com/contracts/session"
      topics       = ["sonsofphp", "sons-of-php", "php", "session"]
    },
    state-machine-contract = {
      name         = "state-machine-contract"
      description  = "[read-only] State Machine Contact"
      homepage_url = "https://docs.sonsofphp.com/contracts/state-machine"
      topics       = ["sonsofphp", "sons-of-php", "php", "state-machine"]
    },
    stdlib-contract = {
      name         = "stdlib-contract"
      description  = "[read-only] Standard Library Contact"
      homepage_url = "https://docs.sonsofphp.com/contracts/stdlib"
      topics       = ["sonsofphp", "sons-of-php", "php", "stdlib"]
    },
    user-agent-contract = {
      name         = "user-agent-contract"
      description  = "[read-only] User Agent Contact"
      homepage_url = "https://docs.sonsofphp.com/components/user-agent"
      topics       = ["sonsofphp", "sons-of-php", "php", "useragent"]
    },
    validator-contract = {
      name         = "validator-contract"
      description  = "[read-only] Validator Contract"
      homepage_url = "https://docs.sonsofphp.com/contracts/validator"
      topics       = ["sonsofphp", "sons-of-php", "php", "validator"]
    },
    version_contract = {
      name         = "version-contract"
      description  = "[read-only] Version Contacts"
      homepage_url = "https://docs.sonsofphp.com/contracts/version"
      topics       = ["sonsofphp", "sons-of-php", "php", "version"]
    },
  }
}

variable "github_sonsofphp_labels" {
  type = map(object({
    name        = string
    color       = string
    #description = string
  }))

  default = {
    Attribute = {
      name  = "Attribute"
      color = "5319e7"
    },
    Cache = {
      name  = "Cache"
      color = "5319e7"
    },
    Clock = {
      name  = "Cache"
      color = "5319e7"
    },
    Container = {
      name  = "Container"
      color = "5319e7"
    },
    CQRS = {
      name  = "CQRS"
      color = "5319e7"
    },
    Cookie = {
      name  = "Cookie"
      color = "5319e7"
    },
    EventDispatcher = {
      name  = "EventDispatcher"
      color = "5319e7"
    },
    EventSourcing = {
      name  = "EventSourcing"
      color = "5319e7"
    },
    FeatureToggle = {
      name  = "FeatureToggle"
      color = "5319e7"
    },
    Gateway = {
      name  = "Gateway"
      color = "5319e7"
    },
    HttpClient = {
      name  = "HttpClient"
      color = "5319e7"
    },
    HttpFactory = {
      name  = "HttpFactory"
      color = "5319e7"
    },
    HttpHandler = {
      name  = "HttpHandler"
      color = "5319e7"
    },
    HttpMessage = {
      name  = "HttpMessage"
      color = "5319e7"
    },
    JSON = {
      name  = "JSON"
      color = "5319e7"
    },
    Link = {
      name  = "Link"
      color = "5319e7"
    },
    Logger = {
      name  = "Logger"
      color = "5319e7"
    },
    Mailer = {
      name  = "Mailer"
      color = "5319e7"
    },
    MessageBus = {
      name  = "MessageBus"
      color = "5319e7"
    },
    Money = {
      name  = "Money"
      color = "5319e7"
    },
    Pager = {
      name  = "Pager"
      color = "5319e7"
    },
    Router = {
      name  = "Router"
      color = "5319e7"
    },
    Search = {
      name  = "Search"
      color = "5319e7"
    },
    Session = {
      name  = "Session"
      color = "5319e7"
    },
    UserAgent = {
      name  = "UserAgent"
      color = "5319e7"
    },
    Validator = {
      name  = "Validator"
      color = "5319e7"
    },
    Version = {
      name  = "Version"
      color = "5319e7"
    },
  }
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
#import {
#    to = github_team.hang_arounds
#    id = "Hang Arounds"
#}
#resource "github_team" "hang_arounds" {
#  name    = "Hang Arounds"
#  privacy = "closed"
#}
#import {
#    to = github_team.prospects
#    id = "Prospects"
#}
resource "github_team" "prospects" {
  name    = "Prospects"
  privacy = "closed"
}
#import {
#    to = github_team.members
#    id = "Members"
#}
resource "github_team" "members" {
  name    = "Members"
  privacy = "closed"
}
#import {
#    to = github_team.security
#    id = "Security"
#}
resource "github_team" "security" {
  name           = "Security"
  description    = "Individuals responsible for the security of all things"
  privacy        = "closed"
  parent_team_id = github_team.members.id
}
#import {
#    to = github_team.terraform
#    id = "Terraform"
#}
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
#import {
#    to = github_repository.sonsofphp
#    id = "sonsofphp"
#}
resource "github_repository" "sonsofphp" {
  name         = "sonsofphp"
  description  = "Mother Repository - All Development is done here"
  homepage_url = "https://docs.sonsofphp.com"
  # MAX of 20
  topics = [
    "hacktoberfest",
    "sons-of-php",
    "sonsofphp",
    "php-contract",
    "php-library",
    "php8",
    "bard-php",
    "prospect-php",
    "cookie",
    "cqrs",
    "event-sourcing",
    "feature-toggle",
    "filesystem",
    "link",
    "logger",
    "money",
    "pager",
    "state-machine",
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
  squash_merge_commit_message = "BLANK"

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
#import {
#    for_each = var.github_sonsofphp_labels
#    to       = github_issue_label.sonsofphp[each.key]
#    id       = each.key
#}
resource "github_issue_label" "sonsofphp" {
    for_each    = var.github_sonsofphp_labels
    repository  = "sonsofphp"
    name        = each.key
    color       = each.value.color
    #description = each.value.description
}

# Read Only Repositories for projects
#import {
#    for_each = var.github_readonly_repos
#    to       = github_repository.readonly[each.key]
#    id       = each.value.name
#}
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
#resource "github_repository" "symfony_sop" {
#  name                   = "symfony-sop"
#  description            = "Symfony Template Repository for base projects"
#  homepage_url           = "https://docs.sonsofphp.com"
#  visibility             = "public"
#  has_issues             = true
#  has_projects           = false
#  has_wiki               = false
#  has_downloads          = false
#  is_template            = true
#  vulnerability_alerts   = true
#  allow_auto_merge       = true
#  delete_branch_on_merge = true
#  topics = [
#    "domain-driven-design",
#    "hacktoberfest",
#    "hexagonal-architecture",
#    "symfony",
#    "template",
#  ]
#}
