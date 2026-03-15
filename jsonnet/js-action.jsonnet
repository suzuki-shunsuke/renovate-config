{
  packageRules: [
    {
      groupName: 'Node.js',
      matchPackageNames: [
        'node',
        'nodejs/node',
        '@types/node',
      ],
      allowedVersions: '<= 24',
    },
  ],
}
