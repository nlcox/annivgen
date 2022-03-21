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
	generated_text = twitter_link_p1 + $e_title.text + twitter_link_p2 + $e_alttext.text + twitter_link_p3 + $e_btnlabel.text + twitter_link_p4 + $e_messagetext.text + twitter_link_p5 + $e_imglink.text
	generated_text = generated_text.replace(" ", "%20")
	
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
