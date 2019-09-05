ActiveRecord::Schema.define(version: 2019_09_05_075304) do

  enable_extension "plpgsql"

  create_table "tweets", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
