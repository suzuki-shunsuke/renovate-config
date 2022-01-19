# renovate-config

[![GitHub last commit](https://img.shields.io/github/last-commit/suzuki-shunsuke/renovate-config.svg)](https://github.com/suzuki-shunsuke/renovate-config)
[![License](http://img.shields.io/badge/license-mit-blue.svg?style=flat-square)](https://raw.githubusercontent.com/suzuki-shunsuke/renovate-config/master/LICENSE)

[Renovate's Shareable Config Presets](https://docs.renovatebot.com/config-presets/)

## Presets

* [default](default.json)
* [golang](golang.json) - go mod tidy
* [tflint](tflint.json) - tflint ruleset plugin

## default

```json
{
  "extends": [
    "github>suzuki-shunsuke/renovate-config#0.1.2"
  ]
}
```

## tflint

```json
{
  "extends": [
    "github>suzuki-shunsuke/renovate-config:tflint#0.1.2"
  ]
}
```

Add annotation `# renovate: depName=<plugin full name>` to .tflint.hcl

e.g.

```hcl
plugin "aws" {
  enabled = true
  version = "0.7.0" # renovate: depName=terraform-linters/tflint-ruleset-aws
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}
```

## LICENSE

[MIT](LICENSE)
