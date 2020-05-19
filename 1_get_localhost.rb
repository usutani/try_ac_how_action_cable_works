# frozen_string_literal: true

require 'socket'

body = <<~BODY
  GET / HTTP/1.0\r
  Host: localhost:3000\r
  \r
BODY

Socket.tcp('localhost', 3000) do |sock|
  sock.print body
  sock.close_write
  puts sock.read
end
