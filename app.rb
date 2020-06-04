require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

    get '/' do
      'Bookmark Manager'
      # erb :index
    end

    get '/bookmarks' do
      # Print the ENV variable
      #p ENV
      @bookmarks = Bookmark.all
      erb :bookmark
    end

    get '/bookmark/new' do
      erb :add_bookmark
    end

    post '/addbookmark' do
      p params
      p "Form data submitted to the /bookmarks route!"
    end 



    run! if app_file == $0

end
