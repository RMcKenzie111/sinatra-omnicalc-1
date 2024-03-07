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
  @user_number = params.fetch("number").to_i
  @squared = @user_number.to_f**2
  
  erb(:square_result)
  
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @number_input = params.fetch("user_number").to_i
  @square_root = Math.sqrt(@number_input).to_f
  
  erb(:square_root_results)
  
end

get("random/new") do
end

get("payment/new") do
end
