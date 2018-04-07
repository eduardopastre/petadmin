class Schedule < ApplicationRecord
  include Fae::BaseModelConcern

  enum status: { opened: 1, finished: 2, canceled: 3 }

  validates :date, :status, :notes, presence: true
  belongs_to :client
  belongs_to :service

  after_create :send_confirmation_email

  def self.for_fae_index
    order(:id)
  end

  def send_confirmation_email
    ScheduleJob.perform_later(self, self.client)
  end

end
