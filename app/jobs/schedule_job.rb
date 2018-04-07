class ScheduleJob < ApplicationJob
  queue_as :emails

  def perform(schedule, client)
    ScheduleMailer.new_schedule(schedule, client).deliver_now
  end
end
