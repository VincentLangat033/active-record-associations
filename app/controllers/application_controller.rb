class ApplicationController < Sinatra::Base
    configure do
        # set sessions
        set :views , 'app/views'
        enable :sessions
        set :session_secret, "secret"
    end
    get '/' do 
        # binding.pry
        erb :welcome
        # 'Hello world'

    end
    # helpers do
    #     def get_post
    #         @post = Post.find_by(id:params[:id])
    #     end
    # end
      




    # # A user just requested all posts
    # get '/posts' do 
    #     erb :index

    # end















    # get '/' do
    #     'Hello world!'
    # end
    # get '/test' do 
    #     erb :test
    # end
    # get '/welcome' do
    #     erb :welcome
    # end
end