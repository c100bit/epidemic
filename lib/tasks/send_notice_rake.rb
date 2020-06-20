desc 'Рассылает уведомления на email'
task :perform_all do
  SendNoticelJob.perform_async(force: true)
end
