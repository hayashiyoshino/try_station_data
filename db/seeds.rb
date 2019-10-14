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
    line_type: row['line_type'],
    lon: row['lon'],
    lat: row['lat'],
    zoom: row['zoom'],
    e_status: row['e_status'],
    e_sort: row['e_sort']
    )
end

CSV.foreach('db/seeds/csvs/line.csv', headers: true) do |row|
  Line.create(
    station_cd,station_g_cd,station_name,station_name_k,station_name_r,line_cd,pref_cd,post,add,lon,lat,open_ymd,close_ymd,e_status,e_sort
    station_cd: row['station_cd'],
    station_g_cd: row['station_g_cd'],
    station_name: row['station_name'],
    station_name_k: row['station_name_k'],
    station_name_r: row['station_name_r'],
    line_cd: row['line_cd'],
    pref_cd: row['pref_cd'],
    post: row['post'],
    add: row['add'],
    lon: row['lon'],
    lat: row['lat'],
    open_ymd: row['open_ymd'],
    close_ymd: row['close_ymd'],
    e_status: row['e_status'],
    e_sort: row['e_sort']
    )
end

