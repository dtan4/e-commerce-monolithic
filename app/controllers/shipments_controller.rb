class ShipmentsController < ApplicationController
  def create

  end

  def index
    @shipments = Shipment.all
  end
end
