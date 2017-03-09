class Company < ApplicationRecord
  has_many :schedules, dependent: :destroy, inverse_of: :company
  has_many :abouts, dependent: :destroy, inverse_of: :company
  has_many :arranged_appointments, dependent: :destroy, inverse_of: :company
  has_many :city_guides, dependent: :destroy, inverse_of: :company
  has_many :comments, dependent: :destroy, inverse_of: :company
  has_many :companies, dependent: :destroy, inverse_of: :company
  has_many :customs, dependent: :destroy, inverse_of: :company
  has_many :exhibitors, dependent: :destroy, inverse_of: :company
  has_many :galleries, dependent: :destroy, inverse_of: :company
  has_many :information, dependent: :destroy, inverse_of: :company
  has_many :lecturers, dependent: :destroy, inverse_of: :company
  has_many :location_plans, dependent: :destroy, inverse_of: :company
  has_many :make_an_appointments, dependent: :destroy, inverse_of: :company
  has_many :messages, dependent: :destroy, inverse_of: :company
  has_many :notifications, dependent: :destroy, inverse_of: :company
  has_many :participants, dependent: :destroy, inverse_of: :company
  has_many :questionnaires, dependent: :destroy, inverse_of: :company
  has_many :social_media, dependent: :destroy, inverse_of: :company
  has_many :soundings, dependent: :destroy, inverse_of: :company
  has_many :sponsors, dependent: :destroy, inverse_of: :company

  accepts_nested_attributes_for :schedules, allow_destroy: true
  accepts_nested_attributes_for :abouts, allow_destroy: true
  accepts_nested_attributes_for :arranged_appointments, allow_destroy: true
  accepts_nested_attributes_for :city_guides, allow_destroy: true
  accepts_nested_attributes_for :comments, allow_destroy: true
  accepts_nested_attributes_for :customs, allow_destroy: true
  accepts_nested_attributes_for :exhibitors, allow_destroy: true
  accepts_nested_attributes_for :galleries, allow_destroy: true
  accepts_nested_attributes_for :information, allow_destroy: true
  accepts_nested_attributes_for :lecturers, allow_destroy: true
  accepts_nested_attributes_for :location_plans, allow_destroy: true
  accepts_nested_attributes_for :make_an_appointments, allow_destroy: true
  accepts_nested_attributes_for :messages, allow_destroy: true
  accepts_nested_attributes_for :notifications, allow_destroy: true
  accepts_nested_attributes_for :participants, allow_destroy: true
  accepts_nested_attributes_for :social_media, allow_destroy: true
  accepts_nested_attributes_for :soundings, allow_destroy: true
  accepts_nested_attributes_for :sponsors, allow_destroy: true
  accepts_nested_attributes_for :questionnaires, allow_destroy: true

end
