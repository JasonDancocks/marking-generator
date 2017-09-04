class MarkingPage < ApplicationRecord
	has_many :topics
	has_many :bubble_statements, through: :topics

	accepts_nested_attributes_for :topics
end
