class ProductsController < ApplicationController

  def index
    # Creating new product using query params
    @newProducts = Product.new
    # Rendering all saved products
    @products = Product.all
  end

  def create
    # Creating new product using query params
    @newProducts = Product.new(params.require(:product).permit(:name,:description))
    @newProducts.save

  end
end
