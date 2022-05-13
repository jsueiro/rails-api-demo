class Api::V1::ProductsController < ApplicationController
  
  # index renders all items in the products table
  def index
    products = Product.all
    render json: products, status: 200
  end

  # create, lets us create a new product
  # if the product is saved -> render json data of the product
  # if the product is not saved -> render an err obj
  def create
  
    product = Product.new(
      name: prod_params[:name],
      brand: prod_params[:brand],
      price: prod_params[:price],
      description: prod_params[:description]
    )

    if product.save
      render json: product, status: 200
    else
      render json: {error: "Error creating product."}
    end

  end

  # the show method searches the product by id. if found, renders json obj
  # otherwise renders err obj
  def show
    product = Product.find_by(id: params[:id])
    if product
      render json: product, status: 200
    else
      render json: {error: "Product not found."}
    end
  end

  # private method only available to this controller.
  # uses the built-in methods .require and .permit provided by ActionController for added security
  private
  def prod_params
    params.require(:product).permit([
      :name,
      :brand,
      :price,
      :description
    ])
  end
end
