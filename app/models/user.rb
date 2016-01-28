class User < ActiveRecord::Base
  def full_name
    "#{first_name} #{last_name}"
  end

  def to_json
    obj = attributes.dup
    obj[:full_name] = full_name

    obj.to_json
  end
end
