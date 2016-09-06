class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.text :description
      t.string :company_name
      t.string :url
      t.string :contact_email
      
      
      t.timestamps
    end
  end
end
