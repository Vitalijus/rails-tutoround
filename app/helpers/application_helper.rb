module ApplicationHelper

	def active_link_helper(path)
		"nav-current-link" if request.url.include?(path)
	end
end
