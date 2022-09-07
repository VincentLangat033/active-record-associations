class PostsControllers < ApplicationController
    # All routes pertaining to posts
    # combination of erb and html


    get '/posts' do
        @posts = Post.all
        erb :'posts/index'
    end
    get '/posts/new' do 
        erb :'posts/new'
    end

    # our user wants to see details of 1 post
    #  show page
    get '/posts/:id' do 
        # retrieve the requested post
        # show details of that post
        # params = {"id"=> "1"}
        @post = Post.find_by(id:params[:id])
        erb :'posts/show'
        # you cannot use conditonals
    #    if @post 
    #       erb :'posts/show'
    #    else 
    #     redirect  '/posts/new'
    #    end

    end
    post '/posts' do 
         # binding.pry
        # create new post
        # @post = Post.new(title: params[:title], content: params[:content])
        # @post = Post.new(params)
        # @post.new
        # use create and persist at the same time

        @post = Post.create(params)
          # redirect our user somewhere
        redirect "/posts/#{@post.id}"

       
       
      

    end
   

    get 'posts/:id/edit' do 
#  retrieve the object
# autofill a form with the details of that object
# render to our user to fill
@post = Post.find_by(id:params[:id])
erb :"/posts/edit"


    end
    patch '/posts/:id' do 
        # no view
        # update particular object with new attributes
        @post = Post.find_by(id:params[:id])
        @post.update(title: params[:title], content: params[:content])
        redirect "/posts/#{@post.id}"


    end
    delete '/posts/:id' do 
# no view to render
# get_post
@post = Post.find_by(id:params[:id])
@post.destroy
redirect '/posts'

    end

end