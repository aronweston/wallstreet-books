Rails.application.routes.draw do
  root :to => 'pages#stock_books'

  # Stocks Routes
  get '/stocks/' => 'stocks#search'
  get '/stocks/search' => 'stocks#show'

  # Books Routes
  get '/books' => 'books#search'
  get '/books/search' => 'books#show'

end
