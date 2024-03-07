require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:square_new)
end
get("/square/results") do
  @user_number = params.fetch("user_number").to_i
  @squared = @user_number.to_f**2
#for square
  
  erb(:square_result)
  
end

get("square_root/new") do
end

get("random/new") do
end

get("payment/new") do
end
