module SessionsHelper
  
  # Chapter 8.2.1
  
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
  
  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil? # if current_user != nil then return true.
  end
  #-----
  
  # 8.3
  # Logs out the current user.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  #----
end
