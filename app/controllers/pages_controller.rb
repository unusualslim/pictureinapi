class PagesController < ApplicationController
  def index
    @article = Article.first
  end

  def show
    render params[:page]
  end
end
