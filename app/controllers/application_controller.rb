class ApplicationController < ActionController::Base
  def authenticate_interviewer!
    if interviewer_signed_in?
      super
    else
      redirect_to new_interviewer_session_path
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
end
