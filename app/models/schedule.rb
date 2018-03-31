class Schedule < ApplicationRecord
  include Fae::BaseModelConcern

  enum status: { opened: 1, finished: 2, canceled: 3 }

  validates :date, :status, presence: true
  belongs_to :client
  belongs_to :service



  def self.for_fae_index
    order(:id)
  end


  belongs_to :client
  belongs_to :service
end
