class Pet < ApplicationRecord
  belongs_to :client
  has_many :pet_histories, dependent: :destroy
  
  validates :name, presence: true
 

  accepts_nested_attributes_for :pet_histories, allow_destroy: true
  
 def visites
    pet_histories.count
 end
 def to_s
  name
 end
end
