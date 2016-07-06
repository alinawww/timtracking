class TimeEntriesController < ApplicationController

  def index
    @my_project = Project.find(params[:project_id])
    @time_entries = @my_project.time_entries.where("date > ?", 1.month.ago)
  end

end
