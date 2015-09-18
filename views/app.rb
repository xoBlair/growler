require 'sinatra'
require 'sinatra/reloader'

before do

end

get '/' do
    erb :index
end