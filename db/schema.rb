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

ActiveRecord::Schema.define(version: 2019_12_26_092742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "organizations", force: :cascade do |t|
    t.integer "_id"
    t.string "url"
    t.string "external_id"
    t.string "name"
    t.string "details"
    t.boolean "shared_tickets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "tags", default: [], array: true
    t.text "domain_names", default: [], array: true
    t.index ["_id"], name: "index_organizations_on__id", unique: true
  end

  create_table "tickets", force: :cascade do |t|
    t.string "_id"
    t.string "url"
    t.string "external_id"
    t.string "type"
    t.string "subject"
    t.string "description"
    t.string "priority"
    t.string "status"
    t.integer "submitter_id"
    t.integer "assignee_id"
    t.integer "organization_id"
    t.boolean "has_incidents"
    t.datetime "due_at"
    t.string "via"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "tags", default: [], array: true
    t.index ["_id"], name: "index_tickets_on__id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.integer "_id"
    t.string "url"
    t.string "external_id"
    t.string "name"
    t.string "alias"
    t.boolean "active"
    t.boolean "verified"
    t.boolean "shared"
    t.string "locale"
    t.string "timezone"
    t.datetime "last_login_at"
    t.string "email"
    t.string "phone"
    t.text "signature"
    t.integer "organization_id"
    t.boolean "suspended"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "tags", default: [], array: true
    t.index ["_id"], name: "index_users_on__id", unique: true
  end

end
