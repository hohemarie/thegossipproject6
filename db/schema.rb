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

ActiveRecord::Schema.define(version: 2019_02_10_191407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "first_name"
    t.string "full_name"
    t.integer "id_author"
    t.integer "date_of_birth"
    t.integer "date_of_death"
    t.string "genre"
    t.integer "nb_publications"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "full_name"
    t.string "first_name"
    t.string "last_name"
    t.string "collection"
    t.string "edition"
    t.string "genre"
    t.string "date_of_publication"
    t.string "id_author"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content"
    t.integer "user_id"
    t.string "comment_id"
    t.string "sub_comment_id"
  end

  create_table "compte", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "password_confirm"
    t.integer "date_of_birth"
    t.string "specialty"
  end

  create_table "comptes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "password_confirm"
    t.integer "date_of_birth"
    t.string "specialty"
    t.text "description"
  end

  create_table "conversations", force: :cascade do |t|
    t.string "role"
    t.string "replique"
    t.integer "user_id"
    t.string "name"
    t.string "pmyn"
    t.string "pm_id"
  end

  create_table "formulaire_creation_compte", force: :cascade do |t|
    t.string "name"
    t.integer "year_of_birth"
    t.string "last_name"
    t.string "first_name"
    t.string "email"
    t.string "identifiant"
    t.string "motdepasse"
    t.string "motdepasse_confirmation"
  end

  create_table "gossips", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gossips_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_potin"
    t.integer "user_id"
  end

  create_table "loginsmdp", force: :cascade do |t|
    t.string "identifiant"
    t.string "motdepasse"
    t.string "email"
  end

  create_table "messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "text"
    t.string "title"
    t.string "sender"
    t.string "date_denvoi"
  end

  create_table "potins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "private_messages", force: :cascade do |t|
    t.text "content"
    t.bigint "recipient_id"
    t.bigint "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_private_messages_on_recipient_id"
    t.index ["sender_id"], name: "index_private_messages_on_sender_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.bigint "gossip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gossip_id"], name: "index_tags_on_gossip_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.string "email"
    t.integer "age"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_digest"
    t.index ["city_id"], name: "index_users_on_city_id"
  end

end
