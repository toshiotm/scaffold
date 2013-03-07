class SearchTopController < ApplicationController

	def index
		Hotpapper.search_shop("34.67", "135.52", "500")
		@count = 1
	end
end

