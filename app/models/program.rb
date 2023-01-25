class Program < ApplicationRecord
    validates_presence_of :name

    has_many :customer_form_program_ships
    has_many :customer_forms, through: :customer_form_program_ships
end
