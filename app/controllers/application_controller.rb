class ApplicationController < ActionController::Base
  protect_from_forgery
  # After sign in redirecting users.
  def after_sign_in_path_for(resource)
      problems_path
    end
end
