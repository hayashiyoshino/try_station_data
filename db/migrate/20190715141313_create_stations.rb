class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|

      t.timestamps
    end
  end
end
