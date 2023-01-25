class CreateCustomerFormProgramShips < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_form_program_ships do |t|
      t.references :customer_form
      t.references :program
      t.timestamps
    end
  end
end
