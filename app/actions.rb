# Homepage (Root path)
helpers do 

  def current_user
    @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end 

get '/' do
  erb :index
end

get '/login' do
  erb :login
end

get '/signup' do
  erb :signup
end

get 'profile' do
  erb :profile
end

post '/login' do
  username = params[:user_name]
  password = params[:password]

  user = User.find_by(user_name: username)
  if user.password == password
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end

post '/signup' do 
  username = params[:user_name]
  email = params[:email]
  password = params[:password]

  user = User.find_by(user_name: username)
  if user
    redirect 'signup'
  else 
    user = User.create(user_name: username, email: email, password: password)
    session[:user_id] = user.id
    redirect '/'
  end
end