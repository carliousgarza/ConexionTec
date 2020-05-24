class Project < ApplicationRecord
  enum status: [:registered, :approved, :disapproved, :evaluated, :accepted, :rejected, :declined, :missed]
  after_initialize :set_default_status, :if => :new_record?

  belongs_to :student
  belongs_to :professor
  belongs_to :institution
  belongs_to :edition
  has_one :abstract
  accepts_nested_attributes_for :abstract
  has_one :committee_evaluation
  has_one :project_detail
  accepts_nested_attributes_for :project_detail
  has_one :social_impact
  accepts_nested_attributes_for :social_impact
  has_one :project_event_detail

  def set_default_status
    self.status ||= :registered
  end
end
