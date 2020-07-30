#Loading dependencies we need
require 'sqlite3'
require 'active_record'

# Set up a database that resides in RAM
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)

# Set up database tables and columns
ActiveRecord::Schema.define do
  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.integer  "user_id"
    t.string  "device"
    t.string   "action"
    t.integer  "date_actioned"
    t.date "created_at", null: false
    t.date "updated_at", null: false

    t.index ["user_id"], name: "index_records_on_user_id"
  end
  add_foreign_key "records", "users"
end


# Set up model classes
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class User < ApplicationRecord
    has_many :records
end

class Record < ApplicationRecord
    belongs_to :user
end