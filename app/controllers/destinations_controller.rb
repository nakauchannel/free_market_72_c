class DestinationsController < ApplicationController

  def index
    @destination = Destination.new
  end
  
  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(create_params)
    
    if @destination.save
      redirect_to root_path
    else
      render action: :new
    end
    
  end

  def edit
  end

  def update
  end


  private
  def create_params
    params.require(:destination).permit(:first_name,:last_name,:first_name_kana,:last_name_kana,:postal_code,:prefecture_id,:city,:block,:building,:phone_number).merge(user_id: current_user.id)
  end
end
