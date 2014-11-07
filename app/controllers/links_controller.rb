class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params.require(:link).permit(:url, :photo, :notes))
    if @link.save
      redirect_to root_path
    else
      render :new
    end
  end
end
