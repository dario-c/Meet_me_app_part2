module ApplicationHelper

	def flash_message
		if flash[:notice]
			content_tag :div, class: 'notice message' do
 			content_tag :p do
				flash[:notice]
				end
			end
		elsif flash[:alert]
			flash[:alert]	
		end
	end


end
