class BoardsController < ApplicationController
  def new
  end

  def show
  end

  def edit
  end

  def create
  end

  def destroy
  end

  def index
    @boards = Board.all.includes(:user).order(created_at: :desc)
  end
end
