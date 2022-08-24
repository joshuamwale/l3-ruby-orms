require 'bundler'
Bundler.require

require_relative '../lib/student'

DB = { conn: SQLite3::Database.new("db/school.db") }

# RUN CODE FROM HERE

#CREATE TABLE
Student.create_table

#Create a new student
joshua = Student.new(name: "Joshua", age: 18)
#add  student to database
joshua.add_to_db
pp Student.show_all

joshua.name = "Water Bottle"
joshua.age = 2
joshua.update_student

pp Student.show_all

joshua.delete_student
pp Student.show_all

