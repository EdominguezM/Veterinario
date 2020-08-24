class PetHistory < ApplicationRecord
  belongs_to :pet, dependent: :destroy
  
  
end
