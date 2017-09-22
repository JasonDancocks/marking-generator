class MarkingPage < ApplicationRecord
	has_many :p_statements
	scope :bank_feed, ->{ order(created_at: :desc) }
	accepts_nested_attributes_for :p_statements


end

