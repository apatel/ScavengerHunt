class CheckInsController < ApplicationController
  def destroy
    @check_in = CheckIn.find(params[:id])
    @check_in.destroy

    respond_to do |format|
      format.html { redirect_to clue_maps_url }
    end
  end
end
