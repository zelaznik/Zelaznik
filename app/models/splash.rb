class Splash < ActiveRecord::Base
  belongs_to :user, inverse_of: :splashes
end
