//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require cycle
//= require_self

changePic = (obj) ->
	alert "bla"

$ ->
	
	$dialog = $('<div id="mp_dialog"></div>')
		.html('<div class="load_dialog_prev"></div>')
			.dialog
				autoOpen: false
				width: "auto"
				height: 'auto'
				position: [350,100]
				resizable: false
	
	$(".dialog").click ->
		$dialog.load( $(@).attr('href') )
		$dialog.dialog(title: $(@).attr('title')).dialog('open')
		false
		
	
	$.datepicker.setDefaults({ dateFormat: 'yy-mm-dd' });
	$("#user_birthday").datepicker
		changeYear: true,
		yearRange: "1920:1994"
	
	
	$(".profile_preview .pic .pix").cycle()
	$('.image_holder').cycle()
	
	#$(".profile_preview").each ->
	#	$(@).find(".profile_preview_pic").each (x) ->
	#		if x > 0
	#			$(@).hide()
	#		else
	#			$(@).show()
	#	setInterval(
	#		changePic(@),
	#		3000
	#	)