require 'faker'


Crime.destroy_all
City.destroy_all
#User.destroy_all

def seed_crimes
    page = 1
    45.times do 
        endpoint = 'https://api.fbi.gov/wanted/v1/list?page=' + page.to_s
        data = Net::HTTP.get(URI(endpoint))
        data = JSON.parse(data)
        data['items'].each do |crime|
            if crime['field_offices']
                city = City.find_by(name: crime['field_offices'][0])
                Crime.create(title: crime['title'], description: crime['description'], race_raw: crime['race_raw'], eyes: crime['eyes'], hair_raw: crime['hair_raw'], details: crime['details'], birthday: crime['dates_of_birth_used'], image: crime['images'][0]['large'], image_small: crime['images'][0]['thumb'], city: city, warning_message: crime['warning_message'], scars_and_marks: crime['scars_and_marks'], alias: crime['aliases'], caution: crime['caution'], sex: crime['sex'], url: crime['url'], remarks: crime['remarks'], reward: rand(50000...200000).round(-3))
            end
        end
        page += 1
    end
end

def seed_cities
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
        if city == "washingtondc"
            display_name = "Washington D.C."
        elsif city == "sandiego"
            display_name = "San Diego"
        elsif city == "sanfrancisco"
            display_name = "San Francisco"
        elsif city == "losangeles"
            display_name = "Los Angeles"
        elsif city == "kansascity"
            display_name = "Kansas City"
        elsif city == "stlouis"
            display_name = "St. Louis"
        elsif city == "saltlakecity"
            display_name = "Salt Lake City"
        elsif city == "sanjuan"
            display_name = "San Juan"
        elsif city == "newhaven"
            display_name = "New Haven"
        elsif city == "elpaso"
            display_name = "El Paso"
        elsif city == "lasvegas"
            display_name = "Las Vegas"
        elsif city == "neworleans"
            display_name = "New Orleans"
        elsif city == "oklahomacity"
            display_name = "Oklahoma City"
        elsif city == "sanantonio"
            display_name = "San Antonio"
        elsif city == "littlerock"
            display_name = "Little Rock"
        else
            display_name = city.capitalize
        end
        City.create(name: city, display_name: display_name)
    end
end

seed_cities
seed_crimes


10.times do 
    User.create(name: Faker::Name.name, username: Faker::Internet.email, password: "abc123", city: City.all.sample, badge_id: rand(1000000...9999999))
end





# def seed_sample
#     endpoint = 'https://api.fbi.gov/wanted/v1/list?page='
#     data = Net::HTTP.get(URI(endpoint))
#     data = JSON.parse(data)
#     data['items'].each do |crime|
#         city = City.find_by(name: crime['field_offices'][0])
#         Crime.create(title: crime['title'], description: crime['description'], race_raw: crime['race_raw'], eyes: crime['eyes'], hair_raw: crime['hair_raw'], details: crime['details'], birthday: crime['dates_of_birth_used'], image: crime['images'][0]['large'], location_id: city.id)
#     end
# end





