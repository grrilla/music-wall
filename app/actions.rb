# Homepage (Root path)
get '/' do
  redirect '/tracks'
end

get '/tracks' do
  @tracks = Track.all
  erb :'/tracks/index'
end
