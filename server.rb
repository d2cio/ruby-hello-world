require 'sinatra'
require 'socket'

hostname = Socket.gethostname
port = ENV['PORT'] || '3000'

set :bind, '0.0.0.0'
set :port, port
set :logging, true

get '/' do
  'Hello world, from Ruby!<br>Server listening port ' + port + ' on host: ' + hostname
end
