class Project < ActiveRecord::Base
  belongs_to :user, inverse_of: :projects
  validates :user, presence: true
end
