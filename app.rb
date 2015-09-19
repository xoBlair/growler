require 'sinatra'
require 'sinatra/reloader'
enable :sessions
# before do

# end
@@growl_array = []
get '/' do
    @@test_var = "test string   "
    erb :profile
end

post '/' do
#     greeting = params[:greeting] || "Hi There"
#     name = params[:name] || "Nobody"

@post = params[:post1]
 
@@growl_array.push(@post)

erb :profile
end

post '/reset' do

    @@growl_array=[]
    redirect '/'
end

get '/foo' do
  session[:blair] = 'Hello blair'
  person = "blair"
  "other message"
  # redirect to('/bar')
end

get '/bar' do

  session[:blair]   # => 'Hello World!'
end