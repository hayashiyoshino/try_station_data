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

CSV.foreach('db/seeds/csvs/join.csv', headers: true) do |row|
  Join.create(
    line_cd: row['line_cd'],
    station_cd1: row['station_cd1'],
    station_cd2: row['station_cd2']
    )
end

CSV.foreach('db/seeds/csvs/line.csv', headers: true) do |row|
  Line.create(
    line_cd: row['line_cd'],
    company_cd: row['company_cd'],
    line_name: row['line_name'],
    line_name_k: row['line_name_k'],
    line_name_h: row['line_name_h'],
    line_color_c: row['line_color_c'],
    line_color_t: row['line_color_t'],
    ine_type: row['ine_type'],
    lon: row['lon'],
    lat: row['lat'],
    zoom: row['zoom'],
    e_status: row['e_status'],
    e_sort: row['e_sort']
    )
end
