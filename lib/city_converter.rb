class CityConverter
    CITIES = {
        'LA' => 'Los Angeles',
        'NYC' => 'New York City',
        'ATL' => 'Atlanta',
        'New York' =>'New York City'
      }

    def convert(city)
        if CITIES.has_key? city
            CITIES[city]
        else
            city
        end
    end
end