local utils = import 'utils.libsonnet';

{
  regexManagers: [
    // Update tflint plugins.
    // Code comment "# renovate: depName=(?<depName>.*?)" is required.
    {
      fileMatch: [".*/\\.tflint\\.hcl$", "^\\.tflint\\.hcl$"],
      matchStrings: [
        "\"(?<currentValue>[^ '\"]+?)\" +# renovate: depName=(?<depName>.*?)\\n",
        "'(?<currentValue>[^ '\"]+?)' +# renovate: depName=(?<depName>.*?)\\n",
      ],
      datasourceTemplate: "github-releases",
      extractVersionTemplate: "^v(?<version>.*)$",
    },
  ],
}
