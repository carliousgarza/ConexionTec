class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected
  def user_keys()
    return [:status, :first_name, :last_name, :userable_id, :userable_type, :edition_id, :institution_id]
  end
end
