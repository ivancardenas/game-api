class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all

    @games = @games.user(params[:user], params[:status]) if params[:user] && params[:status]

    @games = @games.player(params[:player], params[:status]) if params[:player] && params[:status]

    @games = @games.game(params[:user], params[:player], params[:status]) if params[:user] && params[:player] && params[:status]

    render json: @games
  end

  # GET /games/1
  # GET /games/1.json
  def show
    render json: @game
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    @game = Game.find(params[:id])

    if @game.update(put_params)
      head :no_content
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy

    head :no_content
  end

  private

    def set_game
      @game = Game.find(params[:id])
    end

    def game_params
      params.require(:game).permit(:user_id, :status, :player)
    end

    def put_params
      params.require(:game).permit(:status)
    end

    def get_params
      params.permit(:user_id, :status)
    end
end
