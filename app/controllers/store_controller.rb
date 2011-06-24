class StoreController < ApplicationController
  def index
    @products = Product.all
    @time = Time.zone.now
  end

end