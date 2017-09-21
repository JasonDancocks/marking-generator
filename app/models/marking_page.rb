class MarkingPage < ApplicationRecord
	has_many :p_statements
	default_scope { order(created_at: :desc) }
	accepts_nested_attributes_for :p_statements


end

