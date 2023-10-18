class Employee < ApplicationRecord
  has_one_attached :profile_picture do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  has_many :devices

end
