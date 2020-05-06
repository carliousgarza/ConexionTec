class Project < ApplicationRecord
  belongs_to :student
  belongs_to :professor
  belongs_to :institution
  belongs_to :edition
  has_one :abstract
  has_one :committee_evaluation
  has_one :project_detail
  has_one :social_impact
  has_one :project_event_detail
end
