$ ->
  $('div.file-upload input[type="file"]').change ->
    $('label.file-info').text $(this).val().replace(/^.*[\\\/]/, '')

  $('#enter').click ->
    $(this).attr("disabled", "disabled")
    $(this).val('Uploading...')
    $('#new_entry').submit()
