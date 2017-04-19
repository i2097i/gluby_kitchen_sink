class Application < Gtk::Application
  APP_NAME = "Kitchen Sink"
  def initialize
    super('app.kitchen_sink', :handles_open)
    GLib.set_application_name(APP_NAME)
    signal_connect 'activate' do |application|
      @window = ApplicationWindow.new(:application => application)
      @window.present
    end
  end
end