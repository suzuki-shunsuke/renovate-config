local actionSemver = import 'action-semver.jsonnet';
local automerge = import 'automerge.jsonnet';
local disableDigest = import 'disable-digest.jsonnet';
local renovatePreset = import 'renovate-preset.jsonnet';
local slsaGitHubGenerator = import 'slsa-github-generator.jsonnet';
local tflint = import 'tflint.jsonnet';

{
  extends: [
    'helpers:pinGitHubActionDigests',
  ],
} + automerge + {
  packageRules: slsaGitHubGenerator.packageRules + actionSemver.packageRules + disableDigest.packageRules + [
    {
      matchDatasources: [
        'go',
      ],
      postUpdateOptions: [
        'gomodUpdateImportPaths',
      ],
    },
  ],
  regexManagers: tflint.regexManagers + renovatePreset.regexManagers,
}
