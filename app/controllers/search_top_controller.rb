class SearchTopController < ApplicationController

	def index
		shop = Hotpapper.search_shop("34.67", "135.52", "500")
		@count = 1

		@shops = shop.attributes['shop']
	end
end

