class DashboardsController < ApplicationController
  def index
    unless current_team.nil?
      @check_ins = CheckIn.find(:all, :conditions => {:team_id => current_team.id})
    end  
  end  
end
