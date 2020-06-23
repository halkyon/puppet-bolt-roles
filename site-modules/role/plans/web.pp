plan role::web(
  TargetSpec $targets,
) {
  $targets.apply_prep
  apply($targets) {
    include profile::base
    include profile::web
  }
}
