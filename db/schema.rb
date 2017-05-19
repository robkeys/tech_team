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

ActiveRecord::Schema.define(version: 20170509183525) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.boolean "is_portable_device"
    t.string  "size_modifier"
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "customer_number"
    t.string   "name"
    t.string   "rep_name_first"
    t.string   "rep_name_last"
    t.text     "notes",           limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "contact_joins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "contact_id"
    t.string  "contactable_type"
    t.integer "contactable_id"
    t.index ["contactable_type", "contactable_id"], name: "index_contact_joins_on_contactable_type_and_contactable_id", using: :btree
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "address_1"
    t.string   "address_2"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zip"
    t.string   "email"
    t.boolean  "is_address"
    t.boolean  "is_email"
    t.boolean  "is_fax"
    t.boolean  "is_phone"
    t.boolean  "is_primary"
    t.string   "phone"
    t.string   "type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "category_id"
    t.integer  "vendor_id"
    t.integer  "manufacturer_id"
    t.integer  "site_id"
    t.integer  "staff_id"
    t.integer  "cost"
    t.date     "disposal_date"
    t.string   "disposal_method"
    t.text     "disposal_reason",   limit: 65535
    t.string   "domain"
    t.string   "domain_name"
    t.string   "ipv4"
    t.string   "ipv6"
    t.string   "mac_address"
    t.string   "model"
    t.text     "note",              limit: 65535
    t.string   "serial"
    t.integer  "size"
    t.date     "warranty_date"
    t.string   "warranty_email"
    t.string   "warranty_num"
    t.string   "warranty_provider"
    t.string   "warranty_phone"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["category_id"], name: "index_items_on_category_id", using: :btree
    t.index ["manufacturer_id"], name: "index_items_on_manufacturer_id", using: :btree
    t.index ["site_id"], name: "index_items_on_site_id", using: :btree
    t.index ["staff_id"], name: "index_items_on_staff_id", using: :btree
    t.index ["vendor_id"], name: "index_items_on_vendor_id", using: :btree
  end

  create_table "maintenances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "item_id"
    t.integer  "tech_id"
    t.date     "date"
    t.text     "notes",       limit: 65535
    t.string   "part"
    t.string   "part_serial"
    t.string   "type"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "sites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean  "is_tech"
    t.string   "name"
    t.text     "notes",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
