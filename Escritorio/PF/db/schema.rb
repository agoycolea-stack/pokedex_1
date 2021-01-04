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

ActiveRecord::Schema.define(version: 2020_12_22_165047) do

  create_table "add_to_invoice_clients", force: :cascade do |t|
    t.integer "Client_Document_ID_id"
    t.integer "product_id_id"
    t.float "Quantity"
    t.float "Previous_Quantity"
    t.float "Post_Quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_Document_ID_id"], name: "index_add_to_invoice_clients_on_Client_Document_ID_id"
    t.index ["product_id_id"], name: "index_add_to_invoice_clients_on_product_id_id"
  end

  create_table "add_to_invoice_suppliers", force: :cascade do |t|
    t.integer "Supplier_Document_ID_id"
    t.integer "product_id_id"
    t.float "Quantity"
    t.float "Previous_Quantity"
    t.float "Post_Quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Supplier_Document_ID_id"], name: "index_add_to_invoice_suppliers_on_Supplier_Document_ID_id"
    t.index ["product_id_id"], name: "index_add_to_invoice_suppliers_on_product_id_id"
  end

  create_table "buyed_prices", force: :cascade do |t|
    t.integer "product_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id_id"], name: "index_buyed_prices_on_product_id_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "rut"
    t.string "adress"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoice_clients", force: :cascade do |t|
    t.string "Id_Invoice_Client"
    t.string "Client_Id"
    t.integer "Id_Product_id"
    t.integer "Net_Value"
    t.integer "Brute_Value"
    t.float "IVA"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Id_Product_id"], name: "index_invoice_clients_on_Id_Product_id"
  end

  create_table "invoice_suppliers", force: :cascade do |t|
    t.string "Id_Invoice_Supplier"
    t.string "Supplier_Id"
    t.integer "Id_Product_id"
    t.integer "Net_Value"
    t.integer "Brute_Value"
    t.float "IVA"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Id_Product_id"], name: "index_invoice_suppliers_on_Id_Product_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "rols", force: :cascade do |t|
    t.string "Id_rol"
    t.string "Type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sale_prices", force: :cascade do |t|
    t.integer "Product_id_id"
    t.float "Price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Product_id_id"], name: "index_sale_prices_on_Product_id_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "Product_id_id"
    t.float "Quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Product_id_id"], name: "index_stocks_on_Product_id_id"
  end

  create_table "supplier_prices", force: :cascade do |t|
    t.integer "Id_Supplier_id"
    t.integer "product_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Id_Supplier_id"], name: "index_supplier_prices_on_Id_Supplier_id"
    t.index ["product_id_id"], name: "index_supplier_prices_on_product_id_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "rut"
    t.string "adress"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "id_rol"
    t.string "rol"
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
