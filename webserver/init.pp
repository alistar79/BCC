node default {
  class { "mysql":
    root_password => 'auto',          
  } ->
  class { "apache": } ->
  class { "apache::ssl": } ->
  class { 'php': } ->
  class {
    wordpress:
    wordpress_db_name =>      "bcc",
    wordpress_db_user =>      "bccadmin",
    wordpress_db_password =>  "changeme"
  } ->
  class { 'postfix': }
}
