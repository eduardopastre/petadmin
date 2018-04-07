class Campaign < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, presence: true
  validates :body, presence: true

  after_save :schedule_emails

  has_many :campaign_clients
  has_many :clients, through: :campaign_clients

  def fae_display_field
    title
  end

  def schedule_emails
    Client.all.each do |client|
      CampaignClient.create(campaign: self, client: client)
      CampaignJob.perform_later(client, title, body)
    end
  end

end