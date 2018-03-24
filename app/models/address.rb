class Address < ApplicationRecord
  include Fae::BaseModelConcern

  validates :client, :street, :number, :city, :state, :neighborhood, presence: true

  belongs_to :client

  def fae_display_field
    "#{street} - #{number}, #{neighborhood}, #{city} - #{state}"
  end

  def self.for_fae_index
    order(:id)
  end

  def states
    %w[AC AL AP AM BA CE DF ES GO MA MT MS MG PA PB PR PE PI RJ RN RS RO RR SC SP SE TO]
  end
end
