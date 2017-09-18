class MarkingPage < ApplicationRecord
	has_many :p_statements

	validates :count, numericality: { only_integer: true}

	accepts_nested_attributes_for :p_statements


end

