# action-pipenv
Pipenv for Github Actions

### Example usage
```
workflow "Test My App" {
  on = "push"
  resolves = ["Run test cases", "Check for vulnerable packages"]
}

action "Install dependencies" {
  uses = "VaultVulp/action-pipenv@master"
  args = "install -d"
}

action "Check for vulnerable packages" {
  needs = ["Install dependencies"]
  uses = "VaultVulp/action-pipenv@master"
  args = "check"
}

action "Run test cases" {
  needs = ["Install dependencies"]
  uses = "VaultVulp/action-pipenv@master"
  args = "run py.test"
}
```
