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

ActiveRecord::Schema.define(version: 20180626114330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.text     "des"
    t.string   "pic"
    t.string   "tags"
    t.boolean  "publish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.integer  "category"
    t.integer  "subcategory"
    t.string   "city"
    t.integer  "share"
    t.integer  "like"
    t.decimal  "lat",         precision: 15, scale: 10
    t.decimal  "lng",         precision: 15, scale: 10
    t.string   "photo"
    t.string   "address"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "email"
    t.string   "contact_number"
    t.string   "address"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "details", force: :cascade do |t|
    t.string   "detail_type"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "firmware_images", force: :cascade do |t|
    t.string   "firmware_image_filename"
    t.binary   "firmware_image"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "grapes", force: :cascade do |t|
    t.string   "name"
    t.string   "short_des"
    t.text     "long_des"
    t.string   "pic"
    t.string   "regions"
    t.boolean  "publish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "supply"
    t.string   "share"
    t.string   "like"
    t.boolean  "week_pub"
    t.string   "supply_url"
  end

  create_table "ips", force: :cascade do |t|
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "company_id"
    t.integer  "share"
    t.integer  "like"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.text     "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id", "created_at"], name: "index_sub_categories_on_category_id_and_created_at", using: :btree
    t.index ["category_id"], name: "index_sub_categories_on_category_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "wines", force: :cascade do |t|
    t.string   "name"
    t.string   "short_des"
    t.text     "long_des"
    t.string   "pic"
    t.string   "regions"
    t.boolean  "publish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "share"
    t.string   "like"
    t.boolean  "week_pub"
    t.string   "supply"
    t.string   "supply_url"
    t.string   "wine_type"
  end

  add_foreign_key "sub_categories", "categories"
end
