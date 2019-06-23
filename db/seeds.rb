# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach('db/seeds/csvs/company.csv', headers: true) do |row|
  Company.create(
    company_cd: row['company_cd'],
    rr_cd: row['image_url'],
    company_name_k: row['company_name_k'],
    company_name_h: row['company_name_h'],
    company_name_r: row['company_name_r'],
    company_url: row['company_url'],
    company_type: row['company_type'],
    e_status: row['e_status'],
    e_sort: row['e_sort']
    )
end
