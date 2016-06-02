class MeetingsController < ApplicationController

  def create
    meeting = Meeting.new(meeting_params)
    meeting.user_id = current_user.id
    if meeting.save
      flash[:notice] = "You have successfully create a meeting"
      redirect_back_or_default(referer_url)
    else
      flash.now[:warning] = meeting.errors.full_messages.first
      session[:return_to] = referer_url
      @shop = Shop.find(meeting_params[:shop_id])
      render 'shops/show'
    end
  end

  def show
    @meeting = Meeting.find params[:id]
  end

  private

  def meeting_params
    params.require(:meeting).permit(:meeting_date_time, :shop_id)
  end
end
