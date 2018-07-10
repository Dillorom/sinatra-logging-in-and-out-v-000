class Helpers
  def self.current_user(session)
    @user = User.find(params[:id])
    session[:id] = @user.id
    @user.id
  end

  def self.is_logged_in? 
  end
end