class ApplicationController < Sinatra::Base
    configure do
        set :views , 'app/views'
    end
    get '/' do
        'Hello world!'
    end
    get '/test' do 
        erb :test
    end
    get '/welcome' do
        erb :welcome
    end
end