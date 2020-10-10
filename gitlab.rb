external_url 'http://0.0.0.0'
gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = "xxxxxxxxx"
gitlab_rails['smtp_port'] = 587
gitlab_rails['smtp_user_name'] = "xxxxxxxxx"
gitlab_rails['smtp_password'] = "xxxxxxxxx"
gitlab_rails['smtp_domain'] = "xxxxxxxxx"
gitlab_rails['smtp_authentication'] = "login"
gitlab_rails['smtp_enable_starttls_auto'] = true
gitlab_rails['smtp_tls'] = false
gitlab_rails['smtp_openssl_verify_mode'] = 'peer'
puma['worker_processes'] = 2
sidekiq['concurrency'] = 9
grafana['enable'] = false
prometheus_monitoring['enable'] = false
unicorn['worker_timeout'] = 300
