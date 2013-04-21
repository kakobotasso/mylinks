$ ->
  closeAll = ->
    $(".contentLinks").slideUp 500
    $(".categoryBar").removeClass "open"

  $(".categoryBar").click ->
    if not $(@).hasClass "open"
      closeAll()
      $(@).next().slideDown 500
      $(@).addClass "open"
    else
      closeAll()




