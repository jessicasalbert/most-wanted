Crime.destroy_all
City.destroy_all

def seed
    page = 1
    45.times do 
        endpoint = 'https://api.fbi.gov/wanted/v1/list?page=' + page.to_s
        data = Net::HTTP.get(URI(endpoint))
        data = JSON.parse(data)
        data['items'].each do |crime|
            if crime['field_offices']
                city = City.find_by(name: crime['field_offices'][0])
                Crime.create(title: crime['title'], description: crime['description'], race_raw: crime['race_raw'], eyes: crime['eyes'], hair_raw: crime['hair_raw'], details: crime['details'], birthday: crime['dates_of_birth_used'], image: crime['images'][0]['large'], city: city)
            end
        end
        page += 1
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
            if crime['field_offices'] 
                cities << crime['field_offices'][0]
            end
        end
        page += 1
    end
    cities.uniq.each do |city|
        City.create(name: city)
    end
end

def seed_sample
    endpoint = 'https://api.fbi.gov/wanted/v1/list?page='
    data = Net::HTTP.get(URI(endpoint))
    data = JSON.parse(data)
    data['items'].each do |crime|
        city = City.find_by(name: crime['field_offices'][0])
        Crime.create(title: crime['title'], description: crime['description'], race_raw: crime['race_raw'], eyes: crime['eyes'], hair_raw: crime['hair_raw'], details: crime['details'], birthday: crime['dates_of_birth_used'], image: crime['images'][0]['large'], location_id: city.id)
    end
end




cities
seed

