class Trait < ApplicationRecord
  TYPES = %w(schedule form_schedule form_lecturer form_participant)
  belongs_to :company

end
