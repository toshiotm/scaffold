class Hotpapper < ActiveResource::Base
	require 'multi_json'

	self.site = "http://webservice.recruit.co.jp"
	self.format = :json

	API_KEY = 	"7b2c7f5d7c4cdff6"
	HOTPAPPER_PATH = "/hotpepper/gourmet/v1/"


	def self.search_shop(lat, lng, range)
		self.find(
			:all,
			:from => HOTPAPPER_PATH,
			:params => {
				:key => "#{API_KEY}",
				:lat => "#{lat}",
				:lng => "#{lng}",
				:range => "#{range}",
				:format => "json"
				})
	end
end