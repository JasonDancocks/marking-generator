module MarkingPagesHelper
 def extension? 
    
   if params[:extension].present? && params[:extension] == "1"
        return true
    else
       return false
    end
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
