class ItemsController < ApplicationController

  before_filter :authenticate_user!, :except => [:show_relnotes]

  # GET /products/:product_id/items
  def index
    @product = Product.find(params[:product_id])
    @items = @product.items

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /products/:product_id/items/1
  def show
    @product = Product.find(params[:product_id])
    @item = @product.items.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /products/:product_id/items/1/relnotes
  def show_relnotes
    @product = Product.find(params[:product_id])
    @item = @product.items.find(params[:id])

    render :layout => "relnotes"

  end

  # GET /products/:product_id/items/new
  def new
    @product = Product.find(params[:product_id])
    @item = Item.new

    @item.product = @product

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /products/:product_id/items/1/edit
  def edit
    @product = Product.find(params[:product_id])
    @item = @product.items.find(params[:id])
  end

  # POST /products/:product_id/items
  def create
    @product = Product.find(params[:product_id])
    @item = Item.new(params[:item])

    @item.product  =  @product

    respond_to do |format|
      if @item.save
        format.html { redirect_to product_item_url(@product,@item), notice: 'Item was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /products/:product_id/items/1
  def update

    @product = Product.find(params[:product_id])
    @item =  @product.items.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to product_item_url(@product,@item), notice: 'Item was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /products/:product_id/items/1
  def destroy
    @product = Product.find(params[:product_id])
    @item = @product.items.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to product_items_url(@product) }
    end
  end
end
