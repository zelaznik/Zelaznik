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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160129043549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "guid"
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.datetime "pub_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "blog_posts", ["user_id"], name: "index_blog_posts_on_user_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "summary"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "splashes", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "rank",       null: false
    t.string   "p"
    t.string   "h2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "splashes", ["user_id", "p", "h2"], name: "index_splashes_on_user_id_and_p_and_h2", unique: true, using: :btree
  add_index "splashes", ["user_id", "rank"], name: "index_splashes_on_user_id_and_rank", unique: true, using: :btree
  add_index "splashes", ["user_id"], name: "index_splashes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "phone"
    t.binary   "resume"
    t.string   "twitter"
    t.string   "blog"
    t.string   "github"
    t.string   "linkedin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["first_name", "last_name"], name: "index_users_on_first_name_and_last_name", unique: true, using: :btree
  add_index "users", ["first_name"], name: "index_users_on_first_name", using: :btree
  add_index "users", ["last_name"], name: "index_users_on_last_name", using: :btree

  add_foreign_key "blog_posts", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "splashes", "users"
end
