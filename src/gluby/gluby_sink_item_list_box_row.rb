class SinkItemListBoxRow < Gtk::ListBoxRow
	type_register
	class << self
		def init
			set_template(:resource => '/app/kitchen_sink/SinkItemListBoxRow.glade')
			[:text_label, :image_view].each{|child_id| bind_template_child(child_id)}
		end
	end
end