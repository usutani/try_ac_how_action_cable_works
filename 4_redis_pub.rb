# frozen_string_literal: true

require 'redis'
redis = Redis.new

redis.publish 'chan1', ARGV[0]
