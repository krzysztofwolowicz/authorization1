class Company < ApplicationRecord
  has_many :traits, dependent: :destroy


  accepts_nested_attributes_for :traits, allow_destroy: true, reject_if: proc { |attributes| attributes['title'].blank? }


end
