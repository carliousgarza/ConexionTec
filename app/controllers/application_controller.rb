class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected
  def user_keys()
    return [:status, :first_name, :last_name, :userable_id, :userable_type, :edition_id, :institution_id]
  end

  def project_detail_keys()
    return [:name, :description, :video_url, :semestre_i, :social_impact, :client_type, :project_id, :category, :area, :type_of]
  end

  def social_impact_keys()
    return [:problem, :empathy, :responsibility, :project_id]
  end
end
