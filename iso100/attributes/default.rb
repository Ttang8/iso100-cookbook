default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:iso100][:git_repository] = "https://github.com/Ttang8/iso100_cookbooks"
default[:iso100][:git_revision] = "master"
default[:iso100][:path] = "/opt/iso100"

default[:iso100][:rails_env] = "production"
default[:iso100][:log_to_stdout] = "true"

default[:iso100][:environment] = {
  "SECRET_KEY_BASE": node[:iso100][:secret_key_base],
  "DATABASE_URL": node[:iso100][:database_url],
  "RAILS_ENV": node[:iso100][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:iso100][:log_to_stdout]
}

default[:iso100][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
