$(document).on 'ready page:load', ->
  $(document).on 'focus', 'input.datepicker:not(.hasDatepicker)', ->
    input = $(@)

    # Only create datepickers in compatible browsers
    return if input[0].type is 'date'
    input.datepicker( "option", "dateFormat", "dd-mm-yy" );
    # defaults = dateFormat: 'dd-mm-yy'
    # options  = input.data 'datepicker-options'
    # input.datepicker $.extend(defaults, options)
  
  datepickers = $('.datepicker')
  $.each datepickers, (_, date) ->
    date_attr = $(date).attr('value')
    return if date_attr == undefined
    if date_attr.length != 0
      year = date_attr.slice(0,4)
      month =  date_attr.slice(5,7)
      day =  date_attr.slice(8,10)
      date.value = (day+'-'+month+'-'+year)
  

  change_to_icon('.view_link', 'eye')
  change_to_icon('.delete_link', 'trash')
  change_to_icon('.edit_link', 'pencil')


# klass is class of group, icon_klass is icon name from font awesome
change_to_icon = (klass, icon_name) ->
  buttons = $(klass)
  $.each buttons, (_, button) ->
    button.text = ''
    $(button).addClass(klass+'_image fa fa-'+icon_name)

