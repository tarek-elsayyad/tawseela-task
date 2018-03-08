class User < ApplicationRecord
    validates :name, :mobile, presence: :true
    has_many :trips, dependent: :destroy
    has_many :trip_check_points, dependent: :destroy
    
end
