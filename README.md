# renovate-config

[![GitHub last commit](https://img.shields.io/github/last-commit/suzuki-shunsuke/renovate-config.svg)](https://github.com/suzuki-shunsuke/renovate-config)
[![License](http://img.shields.io/badge/license-mit-blue.svg?style=flat-square)](https://raw.githubusercontent.com/suzuki-shunsuke/renovate-config/master/LICENSE)

[Renovate's Shareable Config Presets](https://docs.renovatebot.com/config-presets/)

## How to use

default preset

```json
{
  "extends": [
    "github>suzuki-shunsuke/renovate-config#0.1.2"
  ]
}
```

sub preset

```json
{
  "extends": [
    "github>suzuki-shunsuke/renovate-config:tflint#0.1.2"
  ]
}
```

## LICENSE

[MIT](LICENSE)
