class ItemsController < ApplicationController

  before_filter :authenticate_user!, :except => [:show_relnotes, :get_mac, :get_windows]

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

    impressionist(@item,'relnotes')

    render :layout => "relnotes"

  end

  # GET /products/:product_id/items/1/windows
  def get_windows
    product = Product.find(params[:product_id])
    item = product.items.find(params[:id])

    impressionist(item,'windows')

    redirect_to @_env['SCRIPT_NAME'] + item.enclosure.url(dl: => 0)
  end

  # GET /products/:product_id/items/1/mac
  def get_mac
    product = Product.find(params[:product_id])
    item = product.items.find(params[:id])

    impressionist(item,'mac')

    redirect_to @_env['SCRIPT_NAME'] + item.enclosure_mac.url(dl: => 0)
  end

  # GET /products/:product_id/items/1/downloads
  def downloads
    @product = Product.find(params[:product_id])
    @item = @product.items.find(params[:id])

    @mac_impressions = @item.impressions.where(:message => 'mac')
    @windows_impressions = @item.impressions.where(:message => 'windows')

    respond_to do |format|
      format.html # downloads.html.erb
    end
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
