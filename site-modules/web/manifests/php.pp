class web::php(
  $php_version,
) {
  class { 'php::globals':
    php_version => $php_version,
  } ->
  class { 'php':
    composer   => false,
    dev        => false,
    fpm        => true,
    pear       => false,
    extensions => {
      bcmath   => {},
      curl     => {},
      gd       => {},
      intl     => {},
      mbstring => {},
      xml      => {},
      zip      => {},
    }
  }
}
