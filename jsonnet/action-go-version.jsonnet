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
      matchStrings: [
        "go-version: (?<currentValue>.*)",
        "go-version: '(?<currentValue>.*)'",
        'go-version: "(?<currentValue>.*)"',
      ],
    },
  ],
}
