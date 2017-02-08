class ProductsController < ApplicationController

	before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

	# GET /products
  # GET /products.json
  def index
    if params["category_id"].nil?
      @products = Product.all
    else
      @products = Product.where(:category_id=>params["category_id"])
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
  	@product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product,  notice: "Product created Successfully" }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product updated Successfully" }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

  def my_products
    if params["category_id"].nil?
      @products = Product.where(:user_id=>current_user.id)
    else
      @products = Product.where(:category_id=>params["category_id"],:user_id=>current_user.id)
    end
  end

  private

  	# Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:title, :project, :funding_goal, :description, :category_id, :facebook_url, :website,:risks,:user_id,:location,:future_plans,:short_description,:raised_amount,:backers_total)
    end
end

