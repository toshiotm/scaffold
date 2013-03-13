class SearchTopController < ApplicationController

	def index
		shops = Hotpepper.search_shop("34.67", "135.52", "500")
		@shops = shops.attributes['shop']
	end

	def search_keyword
		key_word = params[:key_word]
		shops = Hotpepper.search_keyword(key_word)
		@results_available = shops.attributes['results_available']
		@shops = shops.attributes['shop']
	end
end

