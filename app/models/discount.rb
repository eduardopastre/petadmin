class Discount < ApplicationRecord
  include Fae::BaseModelConcern

  enum discount_type: { real: 1, percentage: 2 }

  validates :title, uniqueness: true, presence: true
  validates :value, :discount_type, presence: true

  def fae_display_field
    title
  end

end
