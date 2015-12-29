class PaymentsController < ApplicationController
  def create

  end

  def index
    @payments = Payment.all
  end
end
