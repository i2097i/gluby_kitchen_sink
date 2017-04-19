class ApplicationWindow
  LIST_ITEMS = [
    {:title => "Buttons", :view => nil}#ButtonDemoBox.new},
  ]

  def initialize(args = nil)
    super(args)
    set_wmclass(Application::APP_NAME, Application::APP_NAME)
    LIST_ITEMS.each do |item|
      list_box.add(SinkItemListBoxRow.new(item))
    end

    list_box.signal_connect 'row-selected' do |list_box|
      if list_box.selected_row
        main_box.add(ButtonDemoBox.new)
        main_box.show_all
      end
    end
  end
end
