class Employee < ApplicationRecord
  has_one_attached :profile_picture do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
    has_many :devices, foreign_key: :assigned_to
  end

  has_many :devices, foreign_key: :assigned_to_id, dependent: :nullify

end
