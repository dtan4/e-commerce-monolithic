Rails.application.routes.draw do
  root to: 'main#index'

  get  "/cart" => "cart#index"
  get  "/catalog" => "items#index"

  post "/payments" => "payments#create"
  get  "/payments" => "payments#index"

  post "/shipments" => "shipments#create"
  get  "/shipments" => "shipments#index"
end
