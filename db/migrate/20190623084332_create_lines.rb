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
      t.
      t.timestamps
    end
  end
end
line_cd,company_cd,line_name,line_name_k,line_name_h,line_color_c,line_color_t,line_type,lon,lat,zoom,e_status,e_sort
