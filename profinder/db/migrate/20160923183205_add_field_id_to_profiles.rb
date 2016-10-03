class AddFieldIdToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :field_id, :integer
  end
end
