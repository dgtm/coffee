# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $('#prev').addClass("hello")
  $('.o').hide()
  $('.submenu').hide()
  $('#nav-about').hide()
  $('#content').hide()
  setInterval(
    ->
      a = $('#f').children()
      b = $('#f .o[style*="display: none"]').first()
      caption = b.attr('caption_text')
      link = b.attr('link')
      a.hide()
      b.fadeIn("slow")
      $('#caption').html('<a href='+link+'>'+caption+'</a>')
  ,2000)

  $('#new').click ->
    $('#next').fadeOut(2000)
  $('#next').click ->
    #$('#new').addClass(obj, slow)
  $('#next').css('color','red')
  $('#next').hover ->
    $('#next').fadeOut(900)
    setTimeout(900)
    $('#next').css('color','black')
    $('#next').fadeIn(900)

  $('.c').live 'click', ->
    $('#d').addClass('c')
    console.log("Clicked")
    $('#e').addClass('c')

  $('#menu').toggle(
   -> $('#nav-about').slideDown(2000)
   -> $('#nav-about').slideUp(2000)
  )

  $('#nav-about #society').mouseenter ->
    $('.submenu').hide()
    $('#submenus#submenu-about').children().show()
    $('#submenu-about').fadeTo(3000,1)

  $('#nav-about #hemo').mouseenter ->
    $('.submenu').hide()
    $('#submenu-activities').fadeTo(2000,1)

  # Click submenus of About
  $('#about-us').click ->
    $('#content').show("fold",1000)
    $('#content').children().hide()
    $('#content #about-us-content').show()
  $('#about-hemo').click ->
    $('#content').show("fold",1000)
    $('#content').children().hide()
    $('#content #about-hemo-content').show()
  $('#goals').click ->
    $('#content').show("fold",1000)
    $('#content').children().hide()
    $('#content #goals-content').show()
  $('#content').click ->
    $('#content').animate({marginLeft: "300px"},2000,
      ->
      )

  $('#content').toggle(
    -> $('#content').animate({marginLeft: "300px"}),
    -> $('#content').animate({marginLeft: "0px"},500)
  )

  $('.submenu-items').click ->
    $('.submenu-items').css('font-size','20px')
    $(this).css('font-size','25px')
    $(this).css('border-bottom','2px solid #ccc')

  # $('#content').toggle(
  #   -> $('#content').animate({marginLeft: "300px"},2000,
  #     ->
  #     ),
  #   -> $('#content').animate({marginRight: "300px"},2000,
  #     ->
  #     )
  # )

  $('.nav-items').mouseenter ->
    $('.nav-items').animate({marginLeft: "0px"})
    $(this).animate({marginLeft: "20px"})
    $(this).children().last().animate({'rotate':'+=360deg'},1000,
      ->
      )
  $('a#light').fancybox({'titlePosition':'over'})
  $('#listing').click ->
    $('#listing').effect("pulsate",{times:3},7000)



#  $('#listing').effect("pulsate",{times:20},1600)

  $('#person_link').click ->
    $.ajax({
      type: "GET",
      datatype: "json",
      url: $(this).attr('data-source'),
      success: (jsonData)->
        console.log(jsonData)
        console.log("abc")
    })

  # $('activities').animate({backgroundPosition,'(153px -10px)'})

  $('#activities').mouseenter ->
    $(this).children().css('color','white')
    $(this).css('backgroundColor', '#49A7F3')
    $(this).css('backgroundPosition','153px -10px')
    # $(this).animate({backgroundPosition,'153px -10px'})


  $('#activities').mouseleave ->
    $(this).children().css('color','#B2ACA6')
    $(this).css('backgroundColor', '#41D05F')
    $(this).animate({backgroundPosition,'300px -10px'})

  $('#events').mouseenter ->
    $(this).children().css('color','white')
    $(this).css('backgroundColor', '#ED6555')
    $(this).css('backgroundPosition','153px -10px')

  $('#events').mouseleave ->
    $(this).children().css('color','#B2ACA6')
    $(this).css('backgroundColor', '#E6E2DF')
    $(this).animate({backgroundPosition,'300px -10px'})


  $('#plans').mouseenter ->
    $(this).children().css('color','white')
    $(this).css('backgroundColor', '#FF8400')
    $(this).css('backgroundPosition','153px -10px')

  $('#plans').mouseleave ->
    $(this).children().css('color','#B2ACA6')
    $(this).css('backgroundColor', '#FEFCB5')
    $(this).animate({backgroundPosition,'300px -10px'})
