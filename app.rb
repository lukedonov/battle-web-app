require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player1])
    $player_2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    p session
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.attack(@player_2)
    erb :attack
  end

  run! if app_file == $0
end