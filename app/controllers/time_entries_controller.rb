class TimeEntriesController < ApplicationController

  def index
    @my_project   = Project.find(params[:project_id])
    @time_entries = @my_project.time_entries
  end
  def new
    @my_project = Project.find(params[:project_id])
    @my_entry   = @my_project.time_entries.new
    render 'new'
  end
  def create
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.create(entry_params)
    if @my_entry
      redirect_to action:'index',
                  controller:'time_entries',
                  project_id:@my_project.id
    else
      render 'new'
    end
  end
  def edit
    @my_project = Project.find(params[:project_id])
    @my_entry    = @my_project.time_entries.find(params[:id])
  end

  def update
    @my_project = Project.find(params[:project_id])
    @my_entry   = @my_project.time_entries.find(params[:id])
    @my_entry.update(entry_params)
    @my_entry.save
    if @my_entry
      redirect_to action:'index',
                  controller:'time_entries',
                  project_id:@my_project.id
    else
      render 'edit'
    end

    #strong params for secure update
    private
    def entry_params
      params.require(:time_entry).permit(:hours, :minutes, :date)
    end
  end
  def delete
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.find(params[:id])
    
    @my_entry.destroy
  end
end
