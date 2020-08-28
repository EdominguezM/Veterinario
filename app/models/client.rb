class Client < ApplicationRecord
  has_many :pets, dependent: :destroy
  has_many :pet_histories, :through => :pet
 
  validates :name, presence: true
  

  accepts_nested_attributes_for :pets, allow_destroy: true
 
  def to_s
    name
  end
  
  def pet_client
    pets.count
  end

  
end
