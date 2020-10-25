# frozen_string_literal: true

Sidekiq.configure_server do |config|
  config.redis  = { url: ENV['REDIS_URL'], namespace: 'notifyer_sidekiq' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV['REDIS_URL'], namespace: 'notifyer_sidekiq' }
end

Sidekiq.default_worker_options = { backtrace: true }

schedule_file = "config/schedule.yml"
if File.exist?(schedule_file) && Sidekiq.server?
  Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
end
