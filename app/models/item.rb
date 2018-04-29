class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON #if using SQLITE
  belongs_to :user, optional:true


  validates :title, :brand, :price, :model, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the max allowed."}
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed."}
  validates :price, length: {maximum: 9}


  BRAND = %w{ Skyline Sunny GT-R Terrano Patrol Fairlady }
  FINISH = %w{ Black White Blue Red Clear Yellow White }
  CONDITION = %w{ New Mint Used Fair Poor }

end

#note constants are called with uppercase!
#postgress sql dont need to serialize
