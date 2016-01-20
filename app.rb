require "slim"
require "sinatra/base"
require "sinatra/activerecord"

class Cart < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
end

class Item < ActiveRecord::Base
end

class Payment < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  def price
    item.price * amount
  end
end

class Shipment < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
end

class App < Sinatra::Base
  configure do
    register Sinatra::ActiveRecordExtension
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
    @items = Item.all

    slim :catalog
  end

  post "/payments" do
    "/payments"
  end

  get "/payments" do
    @payments = Payment.all

    slim :payments
  end

  post "/shipments" do
    "/shipments"
  end

  get "/shipments" do
    @shipments = Shipment.all

    slim :shipments
  end
end
