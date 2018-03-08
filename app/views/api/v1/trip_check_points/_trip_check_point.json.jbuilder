json.cache! [@trip, trip_check_point] do 
    json.extract! trip_check_point, :id, :trip, :speed, :latitude, :longitude, :user, :created_at, :updated_at
    json.url trip_trip_check_point_url(@trip, trip_check_point, format: :json)
end
