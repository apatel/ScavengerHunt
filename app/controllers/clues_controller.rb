class CluesController < ApplicationController
  
  def index
    @clues = Clue.all
  end  
  
  def edit
    @clue = Clue.find(params[:id])
  end
  
  def new
    @clue = Clue.new

    respond_to do |format|
      format.html
    end
  end
  
  def show
    @clue = Clue.find(params[:id])
  end  
  
  def create
    @clue = Clue.new(params[:clue])

    respond_to do |format|
      if @clue.save
        format.html { redirect_to clues_path, notice: 'Clue was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
  
  def update
    @clue = Clue.find(params[:id])

    respond_to do |format|
      if @clue.update_attributes(params[:clue])
        format.html { redirect_to clues_path, notice: 'Clue was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end  
  
  def destroy
    @clue = Clue.find(params[:id])
    @clue.destroy

    respond_to do |format|
      format.html { redirect_to clues_url }
    end
  end
end
