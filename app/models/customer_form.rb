class CustomerForm < ApplicationRecord
	validates_presence_of :efficiency, :effectiveness, :quantity_of_facilities, :name, :person_in_charge

	has_many :customer_form_program_ships
	has_many :programs, through: :customer_form_program_ships
end
