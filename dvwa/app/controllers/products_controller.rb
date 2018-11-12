class ProductsController < ApplicationController


  # Vulnerable Code
  # Creating new product using query params
  def index
   # Creating new product using form
    @newProducts = Product.new
    # Rendering all saved products
    @products = Product.all
    pName = params['pname']
    pDesc= params['pdesc']
    obj = Product.new
    obj.name = pName
    obj.description = pDesc
    obj.save

 end

=begin
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
=end
end
