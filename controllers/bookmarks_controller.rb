puts

get '/bookmarks' do

  @bookmarks = Bookmark.all
  erb :'bookmarks/bookmarks'
end

get '/bookmarks/find' do
  @bookmarks = Bookmark.all(name: params[:search])
  erb :'bookmarks/find'
end

get '/bookmarks/surprise' do
  @bookmarks = (1..Bookmark.all.size).sample
end

get '/bookmarks/new' do
  
  @bookmark = Bookmark.new
  erb :'bookmarks/new'
end

post '/bookmarks' do
  @bookmark = Bookmark.new(params[:bookmark]).save

  redirect to('/bookmarks')
end

get '/bookmarks/:id' do
  @bookmark = Bookmark.find(params[:id])

  erb :'bookmarks/show'
end

get '/bookmarks/:id/edit' do
  @bookmark = Bookmark.find(params[:id])

  erb :'bookmarks/edit'
end

post '/bookmarks/:id' do
  @bookmark = Bookmark.find(params[:id])
  @bookmark.update_attributes(params[:bookmark])

  redirect to('/bookmarks')
end

post '/bookmarks/:id/delete' do
  Bookmark.find(params[:id]).destroy

  redirect to('/bookmarks')
end