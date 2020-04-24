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

ActiveRecord::Schema.define(version: 2020_04_24_122440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "declars", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "typa_id"
    t.string "reponse"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["typa_id"], name: "index_declars_on_typa_id"
    t.index ["user_id"], name: "index_declars_on_user_id"
  end

  create_table "fichiers", force: :cascade do |t|
    t.bigint "typa_id"
    t.string "titre"
    t.string "file"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["typa_id"], name: "index_fichiers_on_typa_id"
  end

  create_table "hommes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "typas", force: :cascade do |t|
    t.string "titre"
    t.integer "durre"
    t.string "hafa"
    t.boolean "vue"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nom"
    t.boolean "is_admin"
    t.string "nif"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
