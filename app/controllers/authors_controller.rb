class AuthorsController < ApplicationController


    # responsible for anything involvingour author


    # sign up  '/signup'
    # new => creating an object

    get '/signup' do 
        erb :"authors/signup"

    end
    post '/signup' do 
        # binding.pry


        # process signup form
        # receive data from the form inside our params hash
        # create a new author object with the data

        author = Author.new(params)

        # persist the object
        # make sure user is signing up with unique data
        # validate our author object

        # if author.username != ""
        # if author.username.empty?
        if author.username.blank? || author.email.blank? || author.name.blank? || author.password.blank? || Author.find_by_email(params[:email]) || Author.find_by_username(params[:username])
            # redirect them back to signup page

            redirect '/signup'
        else
            author.save
            redirect '/posts'

    
    
        # else
            # if our user is valid
            #  persist the new object
            # redirect them somewher

        end
            


    end

    # login  '/login'
    # read action => querying author and reading author atribbutes

    get '/login' do  #render login form

    end

    post '/login' do  # process log in

    end

    # logout
    # delete action => since it clears the sessions
end