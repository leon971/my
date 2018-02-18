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

ActiveRecord::Schema.define(version: 20180218184446) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email"
  end

  create_table "banks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "amount"
    t.string "name"
    t.integer "block"
  end

  create_table "links", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "link"
    t.integer "order_id"
    t.text "comment"
    t.integer "price"
    t.string "currency"
    t.integer "accept"
  end

  create_table "order_actions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "order_id"
    t.text "action_text"
    t.string "data_1"
    t.string "data_2"
    t.string "data_3"
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "comment"
    t.string "name"
    t.integer "order_number"
    t.integer "owner_id"
    t.integer "user_id"
    t.integer "status_id"
    t.date "date"
    t.integer "blocked"
    t.integer "step"
    t.integer "price"
    t.string "currency"
  end

  create_table "statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "text"
    t.text "comment"
  end

  create_table "taxes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "value"
    t.string "currency"
    t.integer "order_id"
    t.integer "pernament"
  end

  create_table "transactions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "f_bank_id"
    t.integer "s_bank_id"
    t.integer "f_wallet_id"
    t.integer "s_wallet_id"
    t.integer "amount"
    t.date "date"
    t.integer "confirm"
    t.text "description"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username"
    t.string "password"
    t.integer "block"
    t.integer "owner_id"
    t.integer "addres_id"
    t.integer "priority", default: 0
    t.string "usertype", default: "simple"
  end

  create_table "wallets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "blcok"
  end

end
