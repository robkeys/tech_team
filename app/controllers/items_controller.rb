class ItemsController < ApplicationController

  def index
    # global variable to sanitize params to prevent SQL injection.
    @index_params = params.permit(:page, :sort, :direction, :search)
    @filterrific = initialize_filterrific(Item, params[:filterrific],
      select_options: { sorted_by: Item.options_for_sorted_by }) or return
    @items = @filterrific.find.paginate(:per_page => 5, :page => @index_params[:page])

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
    @item = Item.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def sort_col
    Item.column_names.include?(params[:sort]) ? params[:sort] : 'id'
  end

  def sort_dir
    %w[ASC DESC].include?(params[:direction]) ? params[:direction] : 'ASC'
  end

end
