module ApplicationHelper

	def status_label(status)
		label = ""
		if status
			label = "Completed"
		else
			label = "Not completed"
		end
		return label
	end

end
