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
    "/"
  end

  get "/cart" do
    "/cart"
  end

  get "/catalog" do
    "/catalog"
  end

  post "/payments" do
    "/payments"
  end

  get "/payments" do
    "/payments"
  end

  post "/shipments" do
    "/shipments"
  end

  get "shipments" do
    "/shipments"
  end
end
