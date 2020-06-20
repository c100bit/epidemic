desc 'Рассылает уведомления на email'
namespace :send_notice do
  task perform_all: [:environment] do
    SendNoticeJob.perform_async(true)
  end
end
