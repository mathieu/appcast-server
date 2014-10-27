class ProductsController < ApplicationController

  before_filter :authenticate_user! , :except => [:showrss, :get_mac, :get_windows]
  respond_to :xml

  # GET /products
  def index
    @products = current_user.products

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /products/1
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /products/:id/windows
  def get_windows
    product = Product.find(params[:id])
    item = product.items.first # order: 'pub_date desc'

    redirect_to product_item_url(product, item) + '/windows'
  end

  # GET /products/:id/mac
  def get_mac
    product = Product.find(params[:id])
    item = product.items.first # order: 'pub_date desc'

    redirect_to product_item_url(product, item) + '/mac'
  end

  # GET /products/1.xml
  def showrss
    @product = Product.find(params[:id])

    impressionist(@product,message='showrss')

    respond_to do |format|
      format.xml # showrss.xml.erb
    end
  end

  # GET /products/new
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  def create
    @product = Product.new(params[:product])

    @product.users << current_user

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /products/1
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /products/1
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
    end
  end
end
