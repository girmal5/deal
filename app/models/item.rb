class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON #if using SQLITE
  belongs_to :user, optional:true


  validates :title, :brand, :price, :type, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the max allowed."}
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed."}
  validates :price, numericality: { only_integer:true }, length: {maximum: 7}


  BRAND = %w{ Skyline Sunny GT-R Terrano Patrol Fairlady }
  FINISH = %w{ Black White Blue Red Clear Yellow White }
  CONDITION = %w{ New Mint Used Fair Poor }

end


#postgress sql dont need to serialize
