namespace :redis do
  desc "Stop the Redis server"
  task :stop do
    on roles(:worker) do |host|
      execute '/etc/init.d/redis-server stop'
    end
  end
  desc "Start the Redis server"
  task :start do
    on roles(:worker) do |host|
      execute :sudo, '/etc/init.d/redis-server start'
    end
  end
end
