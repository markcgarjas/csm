class CreateCustomerForms < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_forms do |t|
      t.integer :efficiency
      t.integer :effectiveness
      t.integer :quantity_of_facilities
      t.string :name
      t.string :reference_code
      t.string :person_in_charge
      t.decimal :amount_of_ec_received
      t.datetime :contigency_and_date
      t.decimal :amount_of_ec_benefit
      t.string :source_of_info_on_ecc_ecp
      t.string :comment_on_ecc_ecp
      t.string :name_occupation_and_company
      t.timestamps
    end
  end
end
