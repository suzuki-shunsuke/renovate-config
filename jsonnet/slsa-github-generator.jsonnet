{
  packageRules: [
    {
      // slsa-framework/slsa-github-generator doesn't support pinning version
      // > Invalid ref: 68bad40844440577b33778c9f29077a3388838e9. Expected ref of the form refs/tags/vX.Y.Z
      // https://github.com/slsa-framework/slsa-github-generator/issues/722
      matchDepTypes: [
        "action",
      ],
      matchPackageNames: [
        "slsa-framework/slsa-github-generator",
      ],
      pinDigests: false,
    },
  ],
}
