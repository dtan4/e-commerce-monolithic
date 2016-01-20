require "slim"
require "sinatra/base"

class App < Sinatra::Base
  configure do
    Slim::Engine.options[:pretty] = true
  end

  configure :development do
    require "sinatra/reloader"
    register Sinatra::Reloader
  end

  get "/" do
    slim :index
  end

  get "/cart" do
    slim :cart
  end

  get "/catalog" do
    slim :catalog
  end

  post "/payments" do
    "/payments"
  end

  get "/payments" do
    slim :payments
  end

  post "/shipments" do
    "/shipments"
  end

  get "shipments" do
    slim :shipments
  end
end
