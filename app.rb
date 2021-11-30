require 'sinatra'
require "sinatra/reloader" if development?
#requiring sinatra allows us to call the get method and pass '/' as an argument
# tell Sinatra to respond to a GET HTTP request to the path / (which happens whenever the user visits http://localhost:4567) and return the result of executing the block, in this case the string 'hello!
# The browser requests page / (http://localhost:4567/)
# Sinatra activates the block defined by the get '/' do method call
# The block returns the string 'hello!'
# Sinatra returns this string ('hello!') to the User
#The '/' part of the address is the last slash in http://localhost:4567/
get '/' do
  "Hello!"
end

get '/secret' do
  "message of choice take 4"
end
get '/hello/:name/:age' do
    "Hello #{params[:name]} you are #{params[:age]} years today!"
  end

  get '/cat' do
    erb(:index) #we are calling the erb method and asking it to render a file called index.erb
  end
