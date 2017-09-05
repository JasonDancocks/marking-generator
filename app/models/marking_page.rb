class MarkingPage < ApplicationRecord
	has_many :p_statements

	accepts_nested_attributes_for :p_statements
end
