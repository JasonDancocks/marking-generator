class Topic < ApplicationRecord
	belongs_to :marking_page
	has_many :bubble_statements
end
