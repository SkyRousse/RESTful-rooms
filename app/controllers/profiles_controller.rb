class Profile < ApplicationController

  def new
  end

  def create
  end

private
  def profile_params
    params.require(:profile).permit(:name, :points)
  end

end
