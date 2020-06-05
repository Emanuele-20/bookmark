require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec("SELECT * FROM bookmarks")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(url:, title:)
  #   connection = PG.connect(dbname: 'bookmark_manager_test')
  #   connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    if ENV['ENVIRONMENT'] == 'test'
    connection = PG.connect(dbname: 'bookmark_manager_test')
    else
    connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, url, title")
   end




end
