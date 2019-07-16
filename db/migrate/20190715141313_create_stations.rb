class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.integer :station_cd
      t.integer :station_g_cd
      t.string :station_name
      t.string :station_name_k
      t.string :station_name_r
      t.integer :line_cd
      t.integer :pref_cd
      t.string :add
      t.integer :lon
      t.ingeger :lat
      t.date :open_ymd
      t.date :close_ymd
      t.integer :e_status
      t.integer :e_sort
      t.timestamps
    end
  end
end
tation_cd,station_g_cd,station_name,station_name_k,station_name_r,line_cd,pref_cd,post,add,lon,lat,open_ymd,close_ymd,e_status,e_sort
