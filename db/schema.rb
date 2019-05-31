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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_30_172435) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "writers", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "writing_prompts", force: :cascade do |t|
    t.text "fiction_prompt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "writing_responses", force: :cascade do |t|
    t.text "fiction_response"
    t.bigint "writer_id"
    t.bigint "writing_prompt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["writer_id"], name: "index_writing_responses_on_writer_id"
    t.index ["writing_prompt_id"], name: "index_writing_responses_on_writing_prompt_id"
  end

  add_foreign_key "writing_responses", "writers"
  add_foreign_key "writing_responses", "writing_prompts"
end
