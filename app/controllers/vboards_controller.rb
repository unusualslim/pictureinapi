class VboardsController < ApplicationController
  before_action :authenticate_user!, :except => [:show]

  def index
    @vboards = Vboard.all
  end

  def show
    @vboard = Vboard.friendly.find(params[:id])
  end

  def new
    @vboard = Vboard.new
  end

  def edit
    @vboard = Vboard.friendly.find(params[:id])
  end

  def create
    @vboard = Vboard.new(vboard_params)

    if @vboard.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update
    @vboard = Vboard.friendly.find(params[:id])

    if @vboard.update(vboard_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  private
    def vboard_params
      params.require(:vboard).permit(:name, :video)
    end
  end



