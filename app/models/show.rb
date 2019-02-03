class Show < ApplicationRecord
  has_many :genres
  accepts_nested_attributes_for :genres, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }
end
