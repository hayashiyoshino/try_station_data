class CreateLines < ActiveRecord::Migration[5.2]
  def change
    create_table :lines do |t|
      t.integer :line_cd
      t.integer :company_cd
      t.string :line_name
      t.string :line_name_k
      t.string :line_name_h
      t.string :line_color_c
      t.string :line_color_t
      t.string :ine_type
      t.integer :lon
      t.integer :lat
      t.integer :zoom
      t.integer :e_status
      t.integer :e_sort
      t.timestamps
    end
  end
end
