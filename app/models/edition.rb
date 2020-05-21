class Edition < ApplicationRecord
    has_many :users
    has_many :questions
    has_many :projects
    has_many :time_limits
end
