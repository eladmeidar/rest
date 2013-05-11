class BubblesController < ApplicationController

  respond_to :html, :json
  def new
    @bubble = Bubble.new
    respond_with(@bubble)
  end

  def show
    @bubble = Bubble.find(params[:id])
    respond_with(@bubble)
  end

  def create
    @bubble = Bubble.new(params[:bubble])
    @bubble.save
    render :nothing => true, :status => :created
  end
end
