class User < ActiveRecord::Base
  has_many :projects, inverse_of: :user, dependent: :destroy
  has_many :splashes, inverse_of: :user, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end

  def to_json
    obj = attributes.dup
    obj[:full_name] = full_name

    obj.to_json
  end
end
