# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_05_18_223649) do

  create_table "animes", force: :cascade do |t|
    t.string "nome"
    t.date "ano"
    t.integer "episodios"
    t.text "categoria"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "depoimento_id", null: false
    t.integer "qualidade_id", null: false
    t.index ["depoimento_id"], name: "index_animes_on_depoimento_id"
    t.index ["qualidade_id"], name: "index_animes_on_qualidade_id"
  end

  create_table "depoimentos", force: :cascade do |t|
    t.text "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qualidades", force: :cascade do |t|
    t.text "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "animes", "depoimentos"
  add_foreign_key "animes", "qualidades"
end
