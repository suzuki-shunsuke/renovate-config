{
  packageRules: [
    {
      matchManagers: ['gomod'],
      matchDepNames: ['go'],
      matchDepTypes: ['golang'],
      rangeStrategy: 'bump',
    },
  ],
}
