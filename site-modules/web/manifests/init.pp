class web {
  class { 'apache':
    default_vhost => false,
  }

  include apache::mod::rewrite
  include apache::mod::proxy
  include apache::mod::proxy_fcgi
  include apache::mod::remoteip

  create_resources('web::vhost', lookup('web::vhosts'))
}
