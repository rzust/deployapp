root = "/var/www/apps/deployapp/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

preload_app true

listen "/tmp/deployapp.sock", :backlog => 64
worker_processes 4
timeout 30