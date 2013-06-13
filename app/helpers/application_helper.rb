module ApplicationHelper
	def html_category(collection, name)
		html = ""
		if collection.any?
			html += "<div class='categoryBar'><span>#{name}</span></div>"
			html += '<div class="contentLinks">'
			html += '<ul>'
			collection.each do |l|
				html += "<li>#{link_to l.name, l.link, :target => '_blank'} </li>"
			end
			html += '</ul>'
			html += '</div>'
		end
		raw html
	end
end
