data = Net::HTTP.get(URI.parse("http://datamine.mta.info/mta_esi.php?key=#{key}&feed_id=1"))
