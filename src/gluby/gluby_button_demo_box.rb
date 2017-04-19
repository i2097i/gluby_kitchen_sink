class ButtonDemoBox < Gtk::Box
	type_register
	class << self
		def init
			set_template(:resource => '/app/kitchen_sink/ButtonDemoBox.glade')
			[].each{|child_id| bind_template_child(child_id)}
		end
	end
end