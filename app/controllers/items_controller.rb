class ItemsController < ApplicationController

  def index
    @filterrific = initialize_filterrific(Item, params[:filterrific],
      select_options: { sorted_by: Item.options_for_sorted_by }) or return
    @items = @filterrific.find.paginate(:per_page => 5, :page => params[:page])

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new({:ipv4 => 'DHCP'})
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = 'Inventory item created successfully.'
      redirect_to(items_path)
    else
      render('new')
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      flash[:notice] = 'Item updated successfully.'
      redirect_to(item_path(params[:id]))
    else
      render('edit')
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "Inventory item number '#{@item.id}' deleted."
      redirect_to(items_path)
    else
      flash[:notice] = "Inventory item number '#{@item.id}' could not be deleted."
    end
  end

  private

  def item_params
    params.require(:item).permit(:cost, :disposal_date, :disposal_method, :disposal_reason, :domain, :domain_name,
                                 :ipv4, :ipv6, :mac_address, :model, :note, :size, :serial, :warranty_date,
                                 :warranty_email, :warranty_num, :warranty_provider, :warranty_phone)
  end

end
