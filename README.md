# Github Action for tightenco/tlint

## Support me

I invest a lot of resources into creating [best in class open source packages](https://wartner.io/open-source). You can support me by [buying one of my paid products](https://wartner.io/open-source/support-me).

I highly appreciate you sending us a postcard from your hometown, mentioning which of my prpjects you are using. You'll find my address on [my contact page](https://wartner.me/contact). I publish all received postcards on [my virtual postcard wall](https://wartner.io/open-source/postcards).

### Note
This section is inspired by my friends at [Spatie](https://github.com/spatie).

## Usage

You can use it as a Github Action like this:

_.github/workflows/lint.yml_
```yaml
on: [push, pull_request]
name: Main
jobs:
  tlint:
    name: TLINT
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: TLINT
      uses: docker://fwartner/ga-tlint
```
