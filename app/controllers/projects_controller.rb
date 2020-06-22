class ProjectsController < ApplicationController
  def index
    @projects = Project.recent.page(params[:page]).per(params[:per_page])
    render json: @projects
  end

  def show
  end
end