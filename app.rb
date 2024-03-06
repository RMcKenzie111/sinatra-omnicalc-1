require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("square/new") do
  #If I visit the path /square/new, I should see a form with a label and an input to enter a number.

  #If I submit that form, I should see the square of the number that I entered.
end

get("square_root/new") do
end

get("random/new") do
end

get("payment/new") do
end
