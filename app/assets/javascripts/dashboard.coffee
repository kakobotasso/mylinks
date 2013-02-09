$ ->
	$(".categoryBar").click ->
		$(".contentLinks").slideUp 500
		$(@).next().slideDown 500