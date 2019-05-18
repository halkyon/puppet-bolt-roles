class web::php {
  class { '::php':
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
      mysqlnd  => {},
      xml      => {},
      zip      => {},
    }
  }
}
