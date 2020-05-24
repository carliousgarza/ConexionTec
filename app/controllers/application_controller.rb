class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected
  def user_keys()
    return [:status, :first_name, :last_name, :userable_id, :userable_type, :edition_id, :institution_id]
  end

  def time_limit_keys()
    return [:phase_name, :start_date, :end_date, :edition_id]
  end
end
