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
        @post = Post.find_by(params[:id])
        erb :'posts/show'
        # you cannot use conditonals
    #    if @post 
    #       erb :'posts/show'
    #    else 
    #     redirect  '/posts/new'
    #    end

    end
    post '/posts' do 
        # create new post
        # redirect our user somewhere

    end
   

    get 'posts/:id/edit' do 
#  retrieve the object
# autofill a form with the details of that object
# render to our user to fill
    end
    patch '/posts/:id' do 
        # no view
        # update particular object with new attributes

    end
    delete '/posts/:id' do 
# no view to render
    end

end