{
  // Sometimes the update of digest is a bit noisy.
  packageRules: [
    {
      matchUpdateTypes: ['digest'],
      enabled: false,
    },
  ],
}
