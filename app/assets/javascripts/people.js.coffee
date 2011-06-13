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

  $('#menu').click ->
    $('#nav-about').slideDown(2000)

  $('#nav-about #society').mouseenter ->
    $('.submenu').hide()
    $('#submenu-about').fadeTo(3000,1)

  $('#nav-about #hemo').mouseenter ->
    $('.submenu').hide()
    $('#submenu-activities').fadeTo(2000,1)
  $('#about-us').click ->
    $('#content').show()
  $('#content').click ->
    $('#content').animate({marginLeft: "300px"},2000,
      ->
      )



