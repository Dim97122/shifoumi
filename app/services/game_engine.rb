class GameEngine

  def initialize(params, game)
    @game = game
    @player = Player.find_or_create_by(name: params[:player])
    @move = @game.moves.create(
      title: %w(rock paper scissors).sample,
      player: @player
    )
  end

  def ia_play
    @game.moves.create(
      title: %w(rock paper scissors).sample,
      player: Player.find_by(name: "IA")
    )
  end

  def game_result
    player_move = @game.moves.where(player: @player).first
    ia_move = @game.moves.find_by("player_id = ?", 1)

    case rules[player_move.title.to_sym][ia_move.title.to_sym]
    when true
      @game.update(result: "#{player_move.player.name} wins")
    when false
      @game.update(result: "IA wins")
    else
      @game.update(result: "Draw")
    end
  end

  private

  def rules
    {
      "rock": {
        "paper": false,
        "rock": 0,
        "scissors": true,
      },
      "paper": {
        "paper": 0,
        "rock": true,
        "scissors": false
      },
      "scissors": {
        "paper": true,
        "rock": false,
        "scissors": 0
      }
    }
  end

end
