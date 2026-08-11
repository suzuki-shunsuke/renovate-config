local actionSemver = import 'action-semver.jsonnet';
local automerge = import 'automerge.jsonnet';
local disableDigest = import 'disable-digest.jsonnet';
local metadataPRHeader = import 'metadata-pr-header.jsonnet';
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
} + automerge + metadataPRHeader + {
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
    {
      matchPackageNames: ['github.com/google/go-github/*'],
      automerge: true,
    },
    {
      // @vercel/ncc bundles a ts-loader that drives the old JavaScript
      // TypeScript API, which TypeScript 7 (the Go rewrite) no longer exposes,
      // so JavaScript Actions built with ncc can't compile with it.
      matchPackageNames: ['typescript'],
      allowedVersions: '<= 6',
    },
    {
      matchPackageNames: [
        '!/^suzuki-shunsuke//',
        '!/^aquaproj//',
        '!/^lintnet//',
        '!/^lintnet-modules//',
        '!/^securefix-action//',
        '!/^csm-actions//',
        // Go modules
        '!/^github\\.com/suzuki-shunsuke//',
        '!/^github\\.com/aquaproj//',
        '!/^github\\.com/lintnet//',
        '!/^github\\.com/lintnet-modules//',
      ],
      minimumReleaseAge: '3 days',
    },
  ],
  customManagers: yamlLangServer.customManagers,
}
