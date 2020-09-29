require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
require('pry')
also_reload('lib/**/*.rb')

get ('/side_input') do
  side2 = params[:side_two]
  side3 = params[:side_three]
  side1 = params[:side_one]
  @triangle = Triangle.new(side1.to_i, side2.to_i, side3.to_i)
  #triangle_check = Triangle.return_triangle_type()
  erb(:side_input)
end

get ('/') do
  # @triangle = Triangle.new(3, 3, 4)
  erb(:side_input)
end