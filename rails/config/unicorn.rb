worker_processes 8

pid "/var/run/unicorn.pid"
listen "/var/run/unicorn.sock"

stdout_path "./log/unicorn.stdout.log"
stderr_path "./log/unicorn.stderr.log"
