require_relative 'environment'
require 'clockwork'

module Clockwork
  configure do |config|
    config[:logger] = Rails.logger
  end

  handler do |job_class|
    Unilog.within_context('clockwork') do
      fail "Неправильный класс для задачи clockwork: #{job_class.inspect}" unless job_class.respond_to?(:perform_async)

      job_class.perform_async
    end
  end

  every 1.day, SendNoticeJob, at: '10:00'
end
