class User < ApplicationRecord
    validates :name, :mobile, presence: :true
end
