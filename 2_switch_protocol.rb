# frozen_string_literal: true

require 'socket'

body = <<~BODY # .gsub("\n", "\r\n")
  GET ws://localhost:3000/cable HTTP/1.1\r
  Host: localhost:3000\r
  Connection: Upgrade\r
  Upgrade: websocket\r
  Origin: http://localhost:3000\r
  \r
BODY

Socket.tcp('localhost', 3000) do |sock|
  sock.print body
  sock.close_write
  puts sock.read
end
