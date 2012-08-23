//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require_self

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