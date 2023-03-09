local automerge = import 'automerge.jsonnet';
local renovatePreset = import 'renovate-preset.jsonnet';
local tflint = import 'tflint.jsonnet';
local slsaGitHubGenerator = import 'slsa-github-generator.jsonnet';
local actionSemver = import 'action-semver.jsonnet';
local disableDigest = import 'disable-digest.jsonnet';

{
  extends: [
    "helpers:pinGitHubActionDigests",
  ],
} + automerge + {
  packageRules: slsaGitHubGenerator.packageRules + actionSemver.packageRules + disableDigest.packageRules,
  regexManagers: tflint.regexManagers + renovatePreset.regexManagers,
}
