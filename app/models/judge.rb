class Judge < ApplicationRecord
    has_one :user, as: :userable
end
