class ItemsController < ApplicationController

  def index
    @filterrific = initialize_filterrific(Item, params[:filterrific],
      select_options: { sorted_by: Item.options_for_sorted_by }) or return
    @items = @filterrific.find.paginate(:per_page => 5, :page => params[:page])

    respond_to do |format|
      format.html
      format.js
    end

    # @items = Item.search(
    #    @index_params[:search]).order("#{sort_col} #{sort_dir}")
    #             .paginate(:per_page => 5, :page => @index_params[:page])
  end

  def show
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
  end

  def update
  end

  def delete
    @item = Item.find(params[:id])
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:cost, :disposal_date, :disposal_method, :disposal_reason, :domain, :domain_name,
                                 :ipv4, :ipv6, :mac_address, :model, :note, :size, :serial, :warranty_date,
                                 :warranty_email, :warranty_num, :warranty_provider, :warranty_phone)
  end

end
