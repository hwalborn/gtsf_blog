require_relative 'api_key.rb'
require 'protobuf'
require 'google/transit/gtfs-realtime.pb'
require 'net/http'
require 'uri'
require 'byebug'

data = Net::HTTP.get(URI.parse("http://datamine.mta.info/mta_esi.php?key=#{ApiKey::KEY}"))
feed_list = Transit_realtime::FeedMessage.decode(data).entity
