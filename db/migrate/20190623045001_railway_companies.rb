class RailwayCompanies < ActiveRecord::Migration[5.2]
  def change
    drop_table :railway_companies
  end
end
