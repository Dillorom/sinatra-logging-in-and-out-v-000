require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    @user = User.find_by(user_name: params[:user_name], password: params[:password])
    if
      session[:user_id] = @user.id
      redirect '/account'
    elsif
      @user == nil
        redirect '/error'
    end
  end

  get '/account' do

  end

  get '/logout' do

  end


end
