# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_30_120644) do

  create_table "brands", force: :cascade do |t|
    t.text "name"
  end

  create_table "models", force: :cascade do |t|
    t.text "name"
    t.text "year"
    t.integer "brand_id", null: false
    t.index ["brand_id"], name: "index_models_on_brand_id"
  end

  create_table "troubleshoots", force: :cascade do |t|
    t.integer "model_id", null: false
    t.text "code"
    t.text "solution"
    t.index ["model_id"], name: "index_troubleshoots_on_model_id"
  end

  add_foreign_key "models", "brands"
  add_foreign_key "troubleshoots", "models"
end
