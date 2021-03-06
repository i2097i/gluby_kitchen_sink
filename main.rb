$: << 'src'
require 'includes'

data_path = "#{File.expand_path(File.dirname(__FILE__))}/interface"

gresource_bin = "#{data_path}/interface.gresource"
gresource_xml = "#{data_path}/interface.gresource.xml"

puts "Failed to compile resources. Exiting..." and return unless system("glib-compile-resources", "--target", gresource_bin, "--sourcedir", File.dirname(gresource_xml), gresource_xml)

puts "Failed to compile resources. Exiting..." and return unless File.exist?(gresource_bin)

at_exit do
  FileUtils.rm_f(gresource_bin)
end

resource = Gio::Resource.load(gresource_bin)
puts Gio::Resources.register(resource)

# Start application
Application.new.run