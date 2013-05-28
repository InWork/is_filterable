# Filter Search Field Observer
jQuery ($) ->
  $(".search-observer").keyup ->
    group = $(this)
    form = group.parents("form").eq(0)
    $.get form.attr("action"), form.serialize(), null, "script"
    false
