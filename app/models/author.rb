class Author < ActiveRecord::Base
    has_many :posts

    # methods that we get
    # Author.clear - clear collection
    # Author.posts
    # Author.posts << () shovel a new post to authors collection
    # author.post.build(pass in attributes which are hash of attributes )
    #  author.create( create and persists to the database)
    # method chaining
    # author.posts.first.title
#  has many categories through posts
    has_many :categories through: :posts

end