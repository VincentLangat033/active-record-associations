require './config/environment'


use Rack::MethodOverride
use PostsControllers
run ApplicationController 
# use controller_name