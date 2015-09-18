require 'sinatra'
require 'sinatra/reloader'
enable :sessions

@@growl_array = []
@@clickCounter = 0
get '/' do
    @@test_var = "HELLO GROWLER"
    erb :profile
end

post '/' do
    @post = params[:post1]
    @@growl_array.push(@post)
    erb :profile
end

post '/reset' do
    @@growl_array=[]
    redirect '/'
end

