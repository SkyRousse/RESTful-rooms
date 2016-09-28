class RoomsController < ApplicationController

  def index
    @rooms = Room.order('created_at DESC')
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:success] = "Place Added"
      redirect_to "/"
    else
      render 'new'
    end
  end

  private

  def room_params
    params.require(:room).permit(:title, :address)
  end

end
