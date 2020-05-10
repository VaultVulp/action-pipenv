# Pipenv for Github Actions

## Use pipenv commands in your GitHub Actions Workflow

### Install dependencies and run custom command

```yaml
  install-test:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2 # Checking out the repo

    - name: Install dependecies
      uses: VaultVulp/action-pipenv@v2.0.0
      with:
        command: install -d # Install all dependencies, including the test ones
    
    - name: Test
      uses: VaultVulp/action-pipenv@v2.0.0
      with:
        command: run test # Run custom `test` command defined in the `[scripts]` block of Pipfile
```
