class Skill < ActiveRecord::Base
  belongs_to :user, inverse_of: :skills
end
