$ ->
  $('div.file-upload input[type="file"]').change ->
    $('label.file-info').text $(this).val().replace(/^.*[\\\/]/, '')
