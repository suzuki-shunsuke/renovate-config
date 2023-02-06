{
  regexManagers: [
    {
      fileMatch: [
        "^\\.github/workflows/.*\\.ya?ml$",
        "^\\.github/actions/.*\\.ya?ml$",
      ],
      depNameTemplate: "golang/go",
      datasourceTemplate: "github-tags",
      extractVersionTemplate: "^go(?<version>.*)$",
      versioningTemplate: "regex:^(?<major>\\d+)\\.(?<minor>\\d+)\\.?(?<patch>\\d+)?$",
      matchStrings: [
        "go-version: (?<currentValue>.*)",
        "go-version: '(?<currentValue>.*)'",
        'go-version: "(?<currentValue>.*)"',
      ],
    },
  ],
}
