$ ->
  flashCallback = ->
    $(".alert").fadeOut()
  $(".alert").bind 'click', (ev) =>
    $(".alert").fadeOut()
  setTimeout flashCallback, 3000
  console.log("For some reason this script won;t work unless I have this here. ¯\_(ツ)_/¯")