require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
require('pry')
also_reload('lib/**/*.rb')