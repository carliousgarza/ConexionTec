class Project < ApplicationRecord
  belongs_to :student
  belongs_to :professor
  belongs_to :institution
  belongs_to :edition
end
