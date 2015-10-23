require 'pry-byebug'
require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pg'
require 'httparty'

require_relative 'controllers/bookmarks_controller'

require_relative 'models/db_base'
require_relative 'models/bookmark'

get '/' do
  erb :index
end