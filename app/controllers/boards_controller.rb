class BoardsController < ApplicationController
#  before_action :authenticate_user!, :except => [ :show]

  def index 
    @boards = Board.all
  end

  def show
    @board = Board.friendly.find(params[:id])
  end

  def new
    @board = Board.new
  end
  
  def edit
    @board = Board.friendly.find(params[:id])
  end

  def create
    @board = Board.new(board_params)
  
    if @board.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update
    @board = Board.friendly.find(params[:id])

    if @board.update(board_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  private
    def board_params
      params.require(:board).permit(:name, :image)
    end
  end
