{
  // https://zenn.dev/link/comments/09bfe96f8a2c1d
  // The default versioning of github-actions manager is "docker", which doens't update prerelease versions expectedly, because docker versioning treats prerelease versions are imcompatible with non prerelease versions.
  // So we change the versioning of github-actions manager to "semver".
  packageRules: [
    {
      matchManagers: ["github-actions"],
      versioning: "semver",
    },
  ],
}
