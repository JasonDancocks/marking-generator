module MarkingPagesHelper
 def extension? 
    
   # @marking_page = MarkingPage.find(get_id)
    
    #if @marking_page.extension
        return true
    #else
       # return false
    #end
 end

 def get_id
    if params[:id].present?
        return params[:id]
    elsif params[:marking_page_id]
        return params[:marking_page_id]
    else
        return
    end
end
    


end
