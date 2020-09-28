require 'net/http'
require 'open-uri'
require 'json'

def cases
    endpoint = 'https://api.fbi.gov/wanted/v1/list'
    data = Net::HTTP.get(URI(endpoint))
    data = JSON.parse(data)
    data['items'].each do |casee|
        # puts casee['title']
        # puts casee['description']
        # puts casee['race_raw']
        # puts casee['eyes']
        # puts casee['hair_raw']
        # puts casee['details']
        puts casee['field_offices'][0]
    end
end

def cities
    cities = []
    page = 1
    45.times do 
        endpoint = 'https://api.fbi.gov/wanted/v1/list?page=' + page.to_s
        data = Net::HTTP.get(URI(endpoint))
        data = JSON.parse(data)
        data['items'].each do |crime|
            if crime['field_offices'] && crime['field_offices'].length > 1
                puts crime['field_offices']
            end
        end
        page += 1
    end
    puts cities.uniq
end


def example
    url = "https://api.fbi.gov/wanted/v1/list"
    data = Net::HTTP.get(URI(url))
    data = JSON.parse(data)
    data['items'][0].each do |key, value|
        puts key, value, "\n"
    end
end


example