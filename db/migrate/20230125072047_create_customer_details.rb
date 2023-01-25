class CreateCustomerDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :gender
      t.string :reference_code
      t.string :comment
      t.string :email
      t.string :phone_number
      t.timestamps
    end
  end
end
