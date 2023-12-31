require 'socket'

# Create the listener socket.
server = TCPServer.new(4481)

# Enter an endless loop of accepting and
# handling connections.
Socket.accept_loop(server) do |connection|
  # handle connection
  connection.close
end

# OR

# require 'socket'

# Socket.tcp_server_loop(4481) do |connection|
#   # handle connection
#   connection.close
# end