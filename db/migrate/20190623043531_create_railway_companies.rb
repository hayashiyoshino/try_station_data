class CreateRailwayCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :railway_companies do |t|
      t.integer :company_cd, null:false
      t.integer :rr_cd, null:false
      t.string :company_name
      t.string :company_name_k
      t.string :company_name_h
      t.string :company_name_r
      t.text :company_url
      t.integer :company_type
      t.integer :e_status
      t.integer :e_sort

      t.timestamps
    end
  end
end
