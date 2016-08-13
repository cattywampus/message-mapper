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

ActiveRecord::Schema.define(version: 20160813181022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string   "name"
    t.integer  "baseline_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["baseline_id"], name: "index_applications_on_baseline_id", using: :btree
  end

  create_table "baselines", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_baselines_on_product_id", using: :btree
  end

  create_table "consumers", id: false, force: :cascade do |t|
    t.integer "message_id"
    t.integer "application_id"
    t.index ["application_id"], name: "index_consumers_on_application_id", using: :btree
    t.index ["message_id"], name: "index_consumers_on_message_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.string   "msg_id"
    t.text     "description"
    t.integer  "baseline_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["baseline_id"], name: "index_messages_on_baseline_id", using: :btree
  end

  create_table "messages_tags", id: false, force: :cascade do |t|
    t.integer "message_id", null: false
    t.integer "tag_id",     null: false
  end

  create_table "producers", id: false, force: :cascade do |t|
    t.integer "message_id"
    t.integer "application_id"
    t.index ["application_id"], name: "index_producers_on_application_id", using: :btree
    t.index ["message_id"], name: "index_producers_on_message_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "baseline_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["baseline_id"], name: "index_tags_on_baseline_id", using: :btree
  end

  add_foreign_key "applications", "baselines"
  add_foreign_key "baselines", "products"
  add_foreign_key "consumers", "applications"
  add_foreign_key "consumers", "messages"
  add_foreign_key "messages", "baselines"
  add_foreign_key "producers", "applications"
  add_foreign_key "producers", "messages"
  add_foreign_key "tags", "baselines"
end
