require 'sinatra'
require 'sinatra/reloader'
require './lib/cd'
require './lib/artist'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/cd-success') do
  my_cd = Cd.new(params.fetch('cd-name'))
  my_cd.save()
  @thiscd = my_cd.title()
  erb(:cd_success)
end

post('/artist-success') do
  my_artist = Artist.new(params.fetch('artist-name'))
  my_artist.save()
  @thisartist = my_artist.name()
  erb(:artist_success)
end

get('/artist_click/:id') do
  this_artist = Artist.find(params.fetch('id').to_i())
  @your_artist = this_artist.name()
  @your_artist_id = this_artist.id()
  erb(:artist_status)
end
