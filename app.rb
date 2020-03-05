require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.current_attacker
    @player2 = $game.current_victim
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @current_victim = $game.current_victim.name
    @current_attacker = $game.current_attacker.name
    @game.attack(@game.current_victim)
    erb :attack
  end

  run! if app_file == $0
end