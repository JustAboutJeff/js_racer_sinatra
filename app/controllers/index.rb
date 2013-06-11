get '/' do
  erb :welcome
end

post '/' do
  @game = Game.new
  params[:player].each_value do |initials|
    @player = Player.find_or_create_by_initials( :initials => initials )
    @game.players << @player
  end
  @game.save
    if @game.valid?
      erb :game
    else
      # erb :error
    end
end

post '/' do
  # @game = Game.find(params[:game_id])
  # @game.winner << params[:winner_initial]
  # @game.win_time << params[:win_time]
  # @game.save
  redirect '/'
end
