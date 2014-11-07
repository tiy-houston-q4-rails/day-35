class LinksController < ApplicationController
  def index
    @links = Link.all
    @link = Link.new
  end

  def create
    @link = Link.new(params.require(:link).permit(:url, :photo, :notes))
    @link.save
    @links = Link.all
    @link = Link.new
  end
end
