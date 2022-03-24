class ApplicationController < ActionController::Base
  helper_method def current_user
    UserProfile.find_by_email(session[:userinfo]["email"]) if session[:userinfo]
  end

  helper_method def logged_in?
    !current_user.nil?
  end
end
