require 'pg'

feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do

      visit '/'
      expect(page).to have_content 'Bookmark Manager'
    end
  end
end



feature 'Test bookmark route' do
  scenario 'Visit bookmarkroute' do

    Bookmark.create(url: "http://www.makersacademy.com")
    Bookmark.create(url: "http://www.destroyallsoftware.com")
    Bookmark.create(url: "http://www.google.com")

    visit'/bookmarks'

      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.google.com"
 end
end


# Write a failing feature test for viewing bookmarks
# at the /bookmarks route.
