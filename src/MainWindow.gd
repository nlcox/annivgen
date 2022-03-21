extends Control

var twitter_link_p1 = "https://twitter.com/i/notifications/anniversary?title="
var title = ""

var twitter_link_p2 = "&message="
var message = ""

var twitter_link_p3 = "&action="
var action = ""

var twitter_link_p4 = "&text="
var text = ""

var twitter_link_p5 = "&image_attachment="
var img_link = ""

var generated_text = ""

func _on_b_generate_pressed():
	title = $e_title.text.percent_encode()
	message = $e_alttext.text.percent_encode()
	action = $e_btnlabel.text.percent_encode()
	text = $e_messagetext.text.percent_encode()
	img_link = $e_imglink.text.percent_encode()
	
	generated_text = twitter_link_p1 + title + twitter_link_p2 + message + twitter_link_p3 + action + twitter_link_p4 + text + twitter_link_p5 + img_link
	
	$e_genlink.text = generated_text

func _on_b_clear_pressed():
	$e_title.text = ""
	$e_imglink.text = ""
	$e_alttext.text = ""
	$e_messagetext.text = ""
	$e_btnlabel.text = ""
	$e_genlink.text = ""

func _on_b_copy_pressed():
	OS.clipboard = generated_text
