module RedisDashboard
  def self.urls=(array)
    @urls = array
  end

  def self.urls
    @urls
  end

  def self.options=(array)
    @options = array
  end

  def self.options
    @options
  end

  def redis_opts
    {
      host: ENV["REDIS_HOST"],
      password: (ENV["REDIS_PASSWORD"] if ENV["REDIS_PASSWORD"].present?),
      port: ENV["REDIS_PORT"]
    }
  end
end

require "redis_dashboard/client"
require "redis_dashboard/command"
require "redis_dashboard/application"
