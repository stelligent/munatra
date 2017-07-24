require 'sinatra'

get '/hello' do
    'Hello, World!'
end

get '/health' do
    'OK'
end
