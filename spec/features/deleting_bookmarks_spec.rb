describe '.delete' do
  it 'deletes the given bookmark' do
    bookmark = Bookmark.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')

    Bookmark.delete(id: bookmark.id)

    expect(Bookmark.all.length).to eq 0
  end
end
