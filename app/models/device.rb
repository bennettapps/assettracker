class Device < ApplicationRecord
    belongs_to :assigned_to, class_name: 'Employee', optional: false, foreign_key: :assigned_to_id_id
end
