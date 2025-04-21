local actionSemver = import 'action-semver.jsonnet';
local automerge = import 'automerge.jsonnet';
local disableDigest = import 'disable-digest.jsonnet';
local slsaGitHubGenerator = import 'slsa-github-generator.jsonnet';
local yamlLangServer = import 'yaml-language-server.jsonnet';

{
  extends: [
    'config:best-practices',
  ],
  lockFileMaintenance: {
    enabled: true,
  },
  configMigration: true,
  minimumReleaseAge: '3 days',
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
    {
      matchPackageNames: ['suzuki-shunsuke/renovate-config'],
      groupName: 'suzuki-shunsuke/renovate-config',
    },
  ],
  customManagers: yamlLangServer.customManagers,
}
