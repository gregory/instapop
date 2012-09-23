# initialize the plugin
$container = $("#am-container")
$imgs = $container.find("img").hide()
totalImgs = $imgs.length
cnt = 0
$imgs.each (i) ->
  $img = $(this)
  $("<img/>").load(->
    ++cnt
    if cnt is totalImgs
      $imgs.show()
      $container.montage
        alternateHeight: true
        alternateHeightRange:
          min: 90
          max: 240

        minsize: true
        margin: 0
        fillLastRow: true

  ).attr "src", $img.attr("src")

$(document).ready ->
  $("a[rel='popover']").popover
    selector: "a[rel='popover']"
    placement: "top"

