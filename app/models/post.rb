class Post < ActiveRecord::Base

#belongs to author and category
  belongs_to :author
#   belongs to Macro is called on Class methods
#   post.author =read values of post
# post.author = / set the author that post belong to
  belongs_to :category
end