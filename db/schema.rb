# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130812081711) do

  create_table "classrooms", :force => true do |t|
    t.string   "title"
    t.integer  "capacity"
    t.boolean  "projector"
    t.boolean  "sound"
    t.boolean  "mic"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.boolean  "projector"
    t.boolean  "sound"
    t.boolean  "mic"
    t.integer  "capacity"
    t.float    "duration"
    t.float    "cycle"
    t.float    "frequency"
    t.integer  "section_size"
    t.string   "kind"
    t.boolean  "join_class"
    t.string   "form"
    t.boolean  "video_makeup"
    t.float    "make_value"
    t.text     "remark"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "departments", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "departments_people", :force => true do |t|
    t.integer "department_id"
    t.integer "person_id"
  end

  add_index "departments_people", ["department_id"], :name => "index_departments_people_on_department_id"
  add_index "departments_people", ["person_id"], :name => "index_departments_people_on_person_id"

  create_table "market_activities", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "market_activities_people", :force => true do |t|
    t.integer "market_activity_id"
    t.integer "person_id"
  end

  add_index "market_activities_people", ["market_activity_id"], :name => "index_market_activities_people_on_market_activity_id"
  add_index "market_activities_people", ["person_id"], :name => "index_market_activities_people_on_person_id"

  create_table "people", :force => true do |t|
    t.string   "username"
    t.integer  "phone"
    t.integer  "qq"
    t.string   "state"
    t.boolean  "home_51"
    t.boolean  "home_101"
    t.boolean  "home_summer"
    t.boolean  "exam_4"
    t.boolean  "exam_6"
    t.boolean  "exam_toefl"
    t.boolean  "exam_qimo"
    t.boolean  "guide"
    t.boolean  "guide_vip"
    t.boolean  "logic"
    t.boolean  "alumnus"
    t.boolean  "finished"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "grade"
    t.boolean  "signup_openclass"
    t.string   "openclass_method"
  end

  create_table "people_schools", :force => true do |t|
    t.integer "school_id"
    t.integer "person_id"
  end

  add_index "people_schools", ["person_id"], :name => "index_schools_people_on_person_id"
  add_index "people_schools", ["school_id"], :name => "index_schools_people_on_school_id"

  create_table "people_specialties", :force => true do |t|
    t.integer "specialty_id"
    t.integer "person_id"
  end

  add_index "people_specialties", ["person_id"], :name => "index_people_specialties_on_person_id"
  add_index "people_specialties", ["specialty_id"], :name => "index_people_specialties_on_specialty_id"

  create_table "schools", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schools_specialties", :force => true do |t|
    t.integer "specialty_id"
    t.integer "person_id"
  end

  add_index "schools_specialties", ["person_id"], :name => "index_schools_specialties_on_person_id"
  add_index "schools_specialties", ["specialty_id"], :name => "index_schools_specialties_on_specialty_id"

  create_table "specialties", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
