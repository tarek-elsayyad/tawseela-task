class Trip < ApplicationRecord
    enum current_status: [:created, :ongoing, :completed]
    belongs_to :user
    has_many :trip_check_points, dependent: :destroy
    validate_enum_attributes :current_status
    validates :starting_time, :starting_latitude, :starting_longitude, :user_id, presence: :true
    validates :starting_latitude, :starting_longitude, numericality: :true
    validates :ended_time, numericality: { only_integer: true }, if: -> {ended_time.present?}
    validates :starting_time, numericality: { only_integer: true }
    
    validate :current_status_order, if: -> {current_status_changed?}

    def current_status_order
        unless current_status_was <= current_status
            errors.add(:current_status, "can't change current status to old status")
        end
    end
    
end
