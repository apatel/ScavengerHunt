class ClueMapsController < ApplicationController
  def index
    @clue_maps = ClueMap.all
  end  
  
  def edit
    @clue_map = ClueMap.find(params[:id])
  end
  
  def new
    @clue_map = ClueMap.new

    respond_to do |format|
      format.html
    end
  end
  
  def create
    @clue_map = ClueMap.new(params[:clue_map])

    respond_to do |format|
      if @clue_map.save
        format.html { redirect_to clue_maps_path, notice: 'Clue Map was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
  
  def update
    @clue_map = ClueMap.find(params[:id])

    respond_to do |format|
      if @clue_map.update_attributes(params[:clue_map])
        format.html { redirect_to clue_maps_path, notice: 'Clue Map was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end  
  
  def destroy
    @clue_map = ClueMap.find(params[:id])
    @clue_map.destroy

    respond_to do |format|
      format.html { redirect_to clue_maps_url }
    end
  end
  
end
