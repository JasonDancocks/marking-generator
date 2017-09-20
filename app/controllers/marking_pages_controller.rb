class MarkingPagesController < ApplicationController
	def new
		@marking_page = MarkingPage.new
		3.times do 
			@marking_page.p_statements.build
		end
			
		
	end


	def create
		@marking_page = MarkingPage.new(marking_page_params)
		if @marking_page.save
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
		params.require(:marking_page).permit(:count, :extension, p_statements_attributes: [:id, :branch,    :statement, :i_statement])
	end
end
