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
  @user_number = params.fetch("number").to_f
  @squared = @user_number.to_f**2
  
  erb(:square_result)
  
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @number_input = params.fetch("user_number").to_f
  @square_root = Math.sqrt(@number_input).to_f
  
  erb(:square_root_results)
  
end

get("/payment/new") do
  erb(:payment_new)
end

get("/payment/results") do
  @apr = params.fetch("apr").to_f
  @apr_percent = @apr.to_fs(:percentage, { :precision => 4 } ) 
  @years = params.fetch("years").to_i
  @user_principal = params.fetch("user_principal").to_f
  @principal_am = @user_principal.to_fs(:currency, { :precision => 2 })
  

  # calculater payment
  rate = @apr/1200 
  monthly_per = @years * 12 
  #numer = rate * balance
  
  n = rate * @user_principal
  d = 1 - (1 + rate)** -monthly_per
  payment =  n / d 
  @payment = payment.to_fs(:currency, { :precision => 2 })

 
  erb(:payment_results)
end

get("/random/new") do
  erb(:random_new)
end

get("/random/results") do
  @max_num = params.fetch("max_num").to_f
  
  @min_num = params.fetch("min_num").to_f
  
  @random_num = rand @min_num..@max_num
  
  erb(:random_results)
end
