require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

    get '/' do
      'Bookmark Manager'
      # erb :index
    end

    get '/bookmarks' do
      # Print the ENV variable
      p ENV
      @bookmarks = Bookmark.all
      erb :bookmark
    end

    run! if app_file == $0

end
