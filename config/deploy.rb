# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

set :application, "argo"
set :repo_url, "git@github.com:ghs-deeplearning/argo.git"
set :branch, :master
set :use_sudo, false
set :deploy_via, :remote_cache
set :pty, true
set :deploy_to, "/home/deploy/#{fetch :application}"

set :linked_files, %w{config/application.yml config/database.yml}
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'
set :keep_releases, 5
