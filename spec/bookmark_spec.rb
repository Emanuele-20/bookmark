require './lib/bookmark.rb'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do

      Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers Academy')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')


      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
  describe  '.create' do
    it 'add new url' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark').first
      expect(bookmark['url']).to include 'http://www.testbookmark.com'
      expect(bookmark['title']).to include 'Test Bookmark'
    end
  end


end
