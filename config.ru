require 'sinatra'

class App < Sinatra::Base
# Add this line to set the Content-Type header for all responses
set :default_content_type, 'application/json'

get '/dice' do
  dice_roll = rand(1..6)
  { roll: dice_roll }.to_json
end

end

run App
