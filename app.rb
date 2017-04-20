require('sinatra')
require('sinatra/reloader')
require('rspec')
require('./lib/prime_numbers')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/display') do
  @number = params.fetch('number').to_i()
  @output = @number.prime_numbers()
  erb(:display)
end
