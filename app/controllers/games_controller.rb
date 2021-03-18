class GamesController < ApplicationController

  # GET /games
  def index
    @games = Game.all.paginate(page: params[:page], per_page: 5 )
    render :index
  end

  # POST /games
  def create
    @game = Game.new(result: "none")

    if @game.save
      engine = GameEngine.new(user_play_params, @game)
      engine.ia_play
      engine.game_result
      render :show, status: :created
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def user_play_params
      params.require(:game).permit(:move, :player)
    end

end
