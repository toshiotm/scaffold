class Hotpepper < ActiveResource::Base
	require 'multi_json'

	self.site = "http://webservice.recruit.co.jp"
	self.format = :json

	API_KEY = 	"7b2c7f5d7c4cdff6"
	HOTPEPPER_PATH = "/hotpepper/gourmet/v1/"

	def self.search_shop(lat, lng, range)
		self.find(
			:one,
			:from => HOTPEPPER_PATH,
			:params => {
				:key => "#{API_KEY}",
				:lat => "#{lat}",
				:lng => "#{lng}",
				:range => "#{range}",
				:format => "json"
				})
	end

	def self.search_keyword(key_word, count=100, range=500)
		self.find(
			:one,
			:from => HOTPEPPER_PATH,
			:params => {
				:key => "#{API_KEY}",				
				:keyword => "#{key_word}",
				:range => "#{range}",
				:count => "#{count}",
				:format => "json"
			})
	end
end