require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')
require('pry')

$pet

get('/') do
  erb(:hatch)
end

post('/tamagotchi') do
  name = params["name"]
  mode = params["game-mode"]
  $pet = Tamagotchi.new(name)
  @pet = $pet
  @pet.mode(mode)
  @info = ""
  erb(:tamagotchi)
end

post('/tamagotchi/:action') do
  @pet = $pet
  @info = ""
  action = params[:action]
  if action == "check"
    @info = @pet.status
  elsif action == "feed"
    @pet.feed
    @info = "Your Tamagotchi has been fed, and gained 5 health points."
  elsif action == "nap"
    @pet.nap
    @info = "Your Tamagotchi has napped, and gained 5 rest points."
  elsif action == "play"
    @pet.play
    @info = "Your Tamagotch has played, and gained 5 happiness points."
  end
  erb(:tamagotchi)
end
