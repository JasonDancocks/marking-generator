module MarkingPagesHelper
 def extension? 
    @marking_page = MarkingPage.find(params[:id])
    if @marking_page.extension
        return true
    else
        return false
    end
 end
	
end
