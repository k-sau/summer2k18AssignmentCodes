class ProductsController < ApplicationController

=begin
  # Vulnerable Code
  # Creating new product using query params
  def index
   if !params['name'].nil?
     pName = params['pname']
     pDesc= params['pdesc']
     obj = Product.new
     obj.name = pName
     obj.description = pDesc
     obj.save
   end
=end
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
