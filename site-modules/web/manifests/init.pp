class web {
  create_resources('web::vhost', lookup('web::vhosts'))
}

