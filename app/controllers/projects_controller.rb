class ProjectsController < ApplicationController
  include ApplicationHelper
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
    @project.build_project_detail
    @project.build_social_impact
    @project.build_abstract
  end

  # GET /projects/1/edit
  def edit
  end

  # GET /select_projects
  def select_projects
    array = get_current_edition_projects()
    @projects = array
  end

  # POST /update_selected_projects
  def update_selected_projects

    currentProjectsArray = get_current_edition_projects()
    selected_ids = params[:selected_projects]
    debugger
    currentProjectsArray.each do |project|
      if selected_ids.include?(project.id.to_s)
        project.update_attribute(:status, 4)
      else
        project.update_attribute(:status, 5)
      end
    end

  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.student_id = current_user.id
    @project.edition_id = current_user.edition_id
    @project.institution_id = current_user.institution_id
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:status, :student_id, :professor_id, :institution_id, :edition_id, :project_detail_attributes => project_detail_params(), :social_impact_attributes => social_impact_params(), :abstract_attributes => abstract_params())
    end

    def project_detail_params
      params = project_detail_keys()
      params << :id
      return params
    end

    def social_impact_params
      params = social_impact_keys()
      params << :id
      return params
    end

    def abstract_params
      params = abstract_keys()
      params << :id
      return params
    end
end
