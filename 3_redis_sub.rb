# frozen_string_literal: true

require 'redis'
redis = Redis.new

redis.subscribe('chan1') do |on|
  on.message do |channel, msg|
    puts '1) messsage'
    puts "2) #{channel}"
    puts "3) #{msg}"
  end
end
