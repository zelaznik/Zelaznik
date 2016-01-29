class Splash < ActiveRecord::Base
  belongs_to :user, inverse_of: :splashes
  validates :user, presence: true
end
