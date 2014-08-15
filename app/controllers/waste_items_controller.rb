class WasteItemsController < ApplicationController
  before_action :set_waste_item, only: [:show, :edit, :update, :destroy]

  # GET /waste_items
  # GET /waste_items.json
  def index
    @waste_items = WasteItem.all
    @waste_item = WasteItem.new
  end

  # GET /waste_items/1
  # GET /waste_items/1.json
  def show
  end

  # GET /waste_items/new
  def new
    @waste_item = WasteItem.new
  end

  # GET /waste_items/1/edit
  def edit
  end

  # POST /waste_items
  # POST /waste_items.json
  def create
    @waste_item = WasteItem.new(waste_item_params)

    respond_to do |format|
      if @waste_item.save
        format.html { redirect_to waste_items_path, notice: 'Waste item was successfully created.' }
        format.json { render :show, status: :created, location: @waste_item }
      else
        format.html { render :new }
        format.json { render json: @waste_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waste_items/1
  # PATCH/PUT /waste_items/1.json
  def update
    respond_to do |format|
      if @waste_item.update(waste_item_params)
        format.html { redirect_to @waste_item, notice: 'Waste item was successfully updated.' }
        format.json { render :show, status: :ok, location: @waste_item }
      else
        format.html { render :edit }
        format.json { render json: @waste_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waste_items/1
  # DELETE /waste_items/1.json
  def destroy
    @waste_item.destroy
    respond_to do |format|
      format.html { redirect_to waste_items_url, notice: 'Waste item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def tag_cloud
    @waste_items = WasteItem.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waste_item
      @waste_item = WasteItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waste_item_params
      params.require(:waste_item).permit(:content)
    end
end
