{
  packageRules: [
    {
      groupName: 'Node.js',
      matchPackageNames: [
        'node',
        'nodejs/node',
        '@types/node',
      ],
      // https://github.com/actions/runner-images/blob/main/images/ubuntu/Ubuntu2404-Readme.md
      // Node.js 20 is installed in ubuntu-24.04.
      allowedVersions: '<= 20.0',
    },
  ],
}

