require 'net/http'
require 'open-uri'
require 'json'

def cases
    endpoint = 'https://api.fbi.gov/wanted/v1/list'
    data = Net::HTTP.get(URI(endpoint))
    data = JSON.parse(data)
    data['items'].each do |casee|
        puts casee['title']
        puts casee['description']
        puts casee['race_raw']
        puts casee['eyes']
        puts casee['hair_raw']
        puts casee['details']
    end
end

cases
    