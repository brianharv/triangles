require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
require('pry')
also_reload('lib/**/*.rb')


get ('/side_input') do
  erb(:side_input)
end

get ('/results') do
  erb(:results)
end