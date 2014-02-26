class HouseListsController < ApplicationController
  before_action :set_house_list, only: [:show, :edit, :update, :destroy]

  # GET /house_lists
  # GET /house_lists.json
  def index
    @house_lists = HouseList.all
  end

  # GET /house_lists/1
  # GET /house_lists/1.json
  def show
  end

  # GET /house_lists/new
  def new
    @house_list = HouseList.new
  end

  # GET /house_lists/1/edit
  def edit
  end

  # POST /house_lists
  # POST /house_lists.json
  def create
    @house_list = HouseList.new(house_list_params)

    respond_to do |format|
      if @house_list.save
        format.html { redirect_to @house_list, notice: 'House list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @house_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @house_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /house_lists/1
  # PATCH/PUT /house_lists/1.json
  def update
    respond_to do |format|
      if @house_list.update(house_list_params)
        format.html { redirect_to @house_list, notice: 'House list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @house_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /house_lists/1
  # DELETE /house_lists/1.json
  def destroy
    @house_list.destroy
    respond_to do |format|
      format.html { redirect_to house_lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house_list
      @house_list = HouseList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_list_params
      params.require(:house_list).permit(:city, :state, :zipCode, :address)
    end
end
