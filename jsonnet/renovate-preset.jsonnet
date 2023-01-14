{
  regexManagers: [
    {
      fileMatch: [
        "^renovate\\.json5?$",
        "^\\.github/renovate\\.json5?$",
        "^\\.gitlab/renovate\\.json5?$",
        "^\\.renovaterc\\.json$",
        "^\\.renovaterc$",
      ],
      matchStrings: [
        "\"github>(?<depName>.*?)#(?<currentValue>[^\" \\n\\(]+)",
        "\"github>(?<depName>.*?):.*#(?<currentValue>[^\" \\n\\(]+)",
        "\"github>(?<depName>.*?)/.*#(?<currentValue>[^\" \\n\\(]+)"
      ],
      datasourceTemplate: "github-releases",
    },
  ],
}
