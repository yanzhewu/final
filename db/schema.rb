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

ActiveRecord::Schema.define(version: 0) do

  create_table "comments", force: :cascade do |t|
    t.string  "content"
    t.integer "date"
    t.integer "tweet_id"
    t.integer "user_id"
  end

  add_index "comments", ["tweet_id"], name: "index_comments_on_tweet_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "connections", force: :cascade do |t|
    t.integer "date"
    t.string  "last_message"
    t.integer "user_one_id"
    t.integer "user_two_id"
  end

  add_index "connections", ["user_one_id"], name: "index_connections_on_user_one_id"
  add_index "connections", ["user_two_id"], name: "index_connections_on_user_two_id"

  create_table "follows", force: :cascade do |t|
    t.integer "fan_id"
    t.integer "star_id"
  end

  add_index "follows", ["fan_id"], name: "index_follows_on_fan_id"
  add_index "follows", ["star_id"], name: "index_follows_on_star_id"

  create_table "likes", force: :cascade do |t|
    t.integer "tweet_id"
    t.integer "user_id"
  end

  add_index "likes", ["tweet_id"], name: "index_likes_on_tweet_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "messages", force: :cascade do |t|
    t.string  "content"
    t.integer "date"
    t.boolean "is_read",       default: false
    t.integer "sender_id"
    t.integer "receiver_id"
    t.integer "connection_id"
  end

  add_index "messages", ["connection_id"], name: "index_messages_on_connection_id"
  add_index "messages", ["receiver_id"], name: "index_messages_on_receiver_id"
  add_index "messages", ["sender_id"], name: "index_messages_on_sender_id"

  create_table "tweets", force: :cascade do |t|
    t.string  "content"
    t.string  "image"
    t.integer "date"
    t.integer "user_id"
  end

  add_index "tweets", ["user_id"], name: "index_tweets_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string  "username"
    t.string  "email"
    t.string  "image"
    t.integer "message_number"
    t.string  "password_digest"
  end

end
