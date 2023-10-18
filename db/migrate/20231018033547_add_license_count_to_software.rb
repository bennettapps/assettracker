class AddLicenseCountToSoftware < ActiveRecord::Migration[7.0]
  def change
    add_column :softwares, :license_count, :integer
  end
end
