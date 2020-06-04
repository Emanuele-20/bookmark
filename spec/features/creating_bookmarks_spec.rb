feature 'add bookmark page' do
  scenario 'user visualises the newly added bookmark' do
    visit('/bookmarks') #we are on /bookmarks route
    click_button ('Add Bookmark') #we are on /bookmarks route
    fill_in('url', with: 'http://testbookmark.com') # we are on /bookmarks/new
    click_button('Submit') #
    expect(page).to have_content('http://testbookmark.com')
  end
end
