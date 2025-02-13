{
  customManagers: [
    {
      customType: 'regex',
      fileMatch: [
        '^renovate\\.json5?$',
        '^\\.github/renovate\\.json5?$',
        '^\\.gitlab/renovate\\.json5?$',
        '^\\.renovaterc\\.json$',
        '^\\.renovaterc$',
      ],
      matchStrings: [
        // "github>aquaproj/aqua-renovate-config:file#2.2.1(aqua/.*\\.ya?ml)"
        // 'github>aquaproj/aqua-renovate-config:file#2.2.1(aqua/.*\\.ya?ml)'
        '"github>(?<depName>(?<packageName>[^/:# \\n]+/[^/:# \\n]+)[^#() \\n]*)#(?<currentValue>[^" \\n\\(]+)',
        '\'github>(?<depName>(?<packageName>[^/:# \\n]+/[^/:# \\n]+)[^#() \\n]*)#(?<currentValue>[^\" \\n\\(]+)',
      ],
      datasourceTemplate: 'github-releases',
    },
  ],
}
