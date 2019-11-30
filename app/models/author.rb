class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  
  validates :phone_number, format: { with: /[0-9]/, message: "Only allows numbers" }
  validates :phone_number, length: { is: 6 }
end
