module ApplicationHelper
	def full_title(page_title)
		default = "Dr Pavel"
		unless page_title.blank?
			default + ' | ' + page_title
		else
			default
		end
	end
end
