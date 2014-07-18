Rails.application.routes.draw do
  
  get '/'       => 'pants#home'
  get '/search' => 'pants#search'

end
