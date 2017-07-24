require 'sinatra'

get '/' do
    'Hello, World!'
end

get '/health' do
    'OK'
end
