class AddCategoriesToDevices < ActiveRecord::Migration[7.0]
  def change
    add_reference :devices, :category, foreign_key: true
  end
end
