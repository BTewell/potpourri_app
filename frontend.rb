require 'http'


system "clear"
p "Welcome to Potpouri!!"
p "Please choose your path."
p "1 - lottery"
p "2 - Fortunes"
p "3 - Sing-along"
user_input = gets.chomp

if user_input == "1"
  p "lotto place"
  response =HTTP.get("http://localhost:3000/api/lotto_url")
  p response.parse['lottery']
elsif user_input == "2"
  response = HTTP.get("http://localhost:3000/api/fortune_url")
  p response.parse['fortune']
elsif user_input == "3"
  response =HTTP.get("http://localhost:3000/api/boozy_url")
  p response.parse['song']
end