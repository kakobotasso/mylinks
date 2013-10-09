module ApplicationHelper
	def html_category(group)
		html = ""
		if group.any?
			group.each do |collection|
				if collection.links.any?
				html += "<div class='categoryBar'><span>#{collection.name}</span></div>"
				html += '<div class="contentLinks">'
				html += '<ul>'
				collection.links.each do |l|
					html += "<li>#{link_to l.name, l.link, :target => '_blank'} </li>"
				end
				html += '</ul>'
				html += '</div>'
				end
			end
		end
		raw html
	end
end
