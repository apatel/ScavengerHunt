class HintsController < ApplicationController
  
  def index
    @hints = Hint.all
  end  
  
  def edit
    @hint = Hint.find(params[:id])
  end
  
  def new
    @hint = Hint.new

    respond_to do |format|
      format.html
    end
  end
  
  def create
    @hint = Hint.new(params[:hint])

    respond_to do |format|
      if @hint.save
        format.html { redirect_to hints_path, notice: 'Hint was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
  
  def update
    @hint = Hint.find(params[:id])

    respond_to do |format|
      if @hint.update_attributes(params[:hint])
        format.html { redirect_to hints_path, notice: 'Hint was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end  
  
  def destroy
    @hint = Hint.find(params[:id])
    @hint.destroy

    respond_to do |format|
      format.html { redirect_to hints_url }
    end
  end
end
