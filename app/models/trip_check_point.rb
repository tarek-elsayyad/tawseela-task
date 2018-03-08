class TripCheckPoint < ApplicationRecord
    belongs_to :user
    belongs_to :trip
    validates :trip, :latitude, :longitude, :speed, presence: true
    validates :latitude, :longitude, :speed, numericality: :true
    after_commit :cache_last_location

    def cache_last_location
        Rails.cache.fetch("#{self.trip_id}/last_location", expires_in: 1.hours) do
            self
        end
    end

    handle_asynchronously :cache_last_location
end
