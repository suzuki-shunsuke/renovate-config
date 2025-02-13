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
        '"github>(?<depName>(?<packageName>[^/:# \\n]+/[^/:# \\n]+)[^#() \\n]*)#(?<currentValue>[^" \\n\\(]+)',
      ],
      datasourceTemplate: 'github-releases',
    },
  ],
}
