class MarkingPagesController < ApplicationController
	
	def new
		@marking_page = MarkingPage.new
		3.times do 
			@marking_page.p_statements.build
		end
	end


	def create
		@marking_page = MarkingPage.new(marking_page_params)
		remove_blanks(@marking_page)
		if @marking_page.save
			redirect_to @marking_page
		else
			flash[:warning] = "Something went wrong"
			render "new"
		end
	end

	def show
		
		@marking_page = MarkingPage.find(helpers.get_id)
			
	end

	def index
		@marking_pages = MarkingPage.bank_feed
	end

	def print
		@marking_page = MarkingPage.find(params[:marking_page_id])
		render layout: "print"
	end

	def destroy
		@marking_page = MarkingPage.find(helpers.get_id)
		@marking_page.destroy
		redirect_to root_path
	end

	private

	def marking_page_params
		params.require(:marking_page).permit( p_statements_attributes: [:id, :branch,    :statement, :i_statement])
	end

	def remove_blanks(marking_page)
		marking_page.p_statements.each do |p|
			if p.statement.empty?
				p.delete
			end
		end
	end
end
