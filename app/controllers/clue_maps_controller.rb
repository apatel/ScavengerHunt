class ClueMapsController < ApplicationController
  def index
    @teams = Team.all
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
  
  def show_clue
    if params[:first] and params[:team_id] != nil
      team = Team.find(params[:team_id])
      @clue = ClueMap.find(:first, :conditions => {:team_id => team.id, :first => true})
    else
      team = Team.find_by_login(params[:login])
      @clue = ClueMap.find(:first, :conditions => {:team_id => team.id, :current_location_id => params[:current]})
    end
    @check_in = CheckIn.new(:team_id => team.id, :location_id => @clue.current_location.id)
    @check_in.save!
  end
  
  def check_in
    #format of URL for tag: http://DOMAIN/clue_maps/check_in?current=2
    @current_location = params[:current]
  end  
  
end
