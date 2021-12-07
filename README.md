# Github Action for tightenco/tlint

## Usage

You can use it as a Github Action like this:

_.github/workflows/lint.yml_
```yaml
on: [push, pull_request]
name: Main
jobs:
  php-cs-fixer:
    name: TLINT
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: TLINT
      uses: docker://fwartner/ga-tlint
```
