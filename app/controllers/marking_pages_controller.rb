class MarkingPagesController < ApplicationController
	def new
		@marking_page = MarkingPage.new
		3.times do
			@marking_page.topics.build
		end
	end


	def create
		@marking_page = MarkingPage.new(marking_page_params)
		if @marking_page.save
			flash[:success] = "Marking page created"
			redirect_to @marking_page
		else
			flash[:warning] = "Something went wrong"
			render "new"
		end
	end

	def show
		@marking_page = MarkingPage.find(params[:id])
	end

	private

	def marking_page_params
		params.permit(:marking_page).require(topic_attributes: %i[id name], bubble_statement_attributes: %i[id text])
	end
end
