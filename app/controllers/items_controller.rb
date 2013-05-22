class ItemsController < ApplicationController

  before_filter :authenticate_user!

  # GET /products/:product_id/items
  # GET /products/:product_id/items.json
  def index
    @product = Product.find(params[:product_id])
    @items = @product.items

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end

  # GET /products/:product_id/items/1
  # GET /products/:product_id/items/1.json
  def show
    @product = Product.find(params[:product_id])
    @item = @product.items.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  # GET /products/:product_id/items/new
  # GET /products/:product_id/items/new.json
  def new
    @product = Product.find(params[:product_id])
    @item = Item.new

    @item.product = @product

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item }
    end
  end

  # GET /products/:product_id/items/1/edit
  def edit
    @product = Product.find(params[:product_id])
    @item = @product.items.find(params[:id])
  end

  # POST /products/:product_id/items
  # POST /products/:product_id/items.json
  def create
    @product = Product.find(params[:product_id])
    @item = Item.new(params[:item])

    @item.product  =  @product

    respond_to do |format|
      if @item.save
        format.html { redirect_to product_item_url(@product,@item), notice: 'Item was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/:product_id/items/1
  # PUT /products/:product_id/items/1.json
  def update

    @product = Product.find(params[:product_id])
    @item =  @product.items.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/:product_id/items/1
  # DELETE /products/:product_id/items/1.json
  def destroy
    @product = Product.find(params[:product_id])
    @item = @product.items.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to product_items_url(@product) }
      format.json { head :no_content }
    end
  end
end
