extends RichTextLabel

func _on_rich_label_with_links_meta_clicked(meta):
	OS.shell_open(meta);
