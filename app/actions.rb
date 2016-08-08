# Homepage (Root path)
get '/' do
  redirect '/tracks'
end

post '/tracks/new' do
  @track = Track.new(
    title: params[:title],
    author: params[:author],
    url: params[:url]
  )
  if @track.save
    redirect '/tracks'
  else
    erb :'/tracks/new'
  end
end

get '/tracks' do
  @tracks = Track.all
  erb :'/tracks/index'
end

get '/tracks/new' do
  erb :'/tracks/new'
end
