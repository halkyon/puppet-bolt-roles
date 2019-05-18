plan role::web(
  TargetSpec $nodes,
) {
  $nodes.apply_prep
  apply($nodes) {
    include profile::base
    include profile::web
  }
}
