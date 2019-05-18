define web::vhost(
  $docroot
) {
  ::apache::vhost { $name:
    docroot         => $docroot,
    port            => 80,
    override        => 'all',
    custom_fragment => "ProxyPassMatch ^/(.*\\.php(/.*)?)$ fcgi://127.0.0.1:9000/${1}",
  }
}
