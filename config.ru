require './config/environment'


use Rack::MethodOverride
use PostsControllers
use AuthorsController
run ApplicationController 

# use controller_name