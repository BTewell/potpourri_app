Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/fortune_url' => 'game_pages#fortune_method'
    get '/lotto_url' => 'game_pages#lottery_method'
  end
end
