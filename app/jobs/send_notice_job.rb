class SendNoticeJob

  include Sidekiq::Worker

  def perform(force = false)
    users = User.all

    calendars = if force
                  VaccinationCalendar.all
                else
                  VaccinationCalendar.where(start_date: DateTime.current)
                end

    calendars.each do |calendar|
      users.each do |user|
        message = calendar.to_notice
        NotificationMailer.with(user: user, message: message).email.deliver_later
        user.notices.create(title: message)
      end
    end
  end

end
