class profile::web {
  include apache
  include apache::mod::proxy
  include apache::mod::proxy_fcgi
  include apache::mod::remoteip
  include web
  include web::php
}
