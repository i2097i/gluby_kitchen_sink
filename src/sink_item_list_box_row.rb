class SinkItemListBoxRow
  attr_accessor :item
	def initialize(item)
		super(nil)
    self.item = item    
    text_label.text = item[:title]
    image_view.clear
    image_view.file = "assets/images/chevron_left.png"
    height = 200

	end
end