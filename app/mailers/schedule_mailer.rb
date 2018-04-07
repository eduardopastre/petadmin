class ScheduleMailer < ApplicationMailer
  def new_schedule(schedule, client)
    @name = client.name
    @date = schedule.date.strftime("%d de %B - %H:%M")
    @service = schedule.service.title if !schedule.service.nil?
    @notes = schedule.notes

    mail to: client.email, subject: "Confirmação de Agendamento"
  end
end
