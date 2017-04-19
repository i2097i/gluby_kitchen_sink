class ApplicationWindow < Gtk::Window
	type_register
	class << self
		def init
			set_template(:resource => '/app/kitchen_sink/ApplicationWindow.glade')
			[:main_box, :list_box].each{|child_id| bind_template_child(child_id)}
		end
	end
end