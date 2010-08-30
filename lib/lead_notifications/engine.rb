require 'lead_notifications'
require 'rails'

module LeadNotifications
  class Engine < Rails::Engine
    engine_name :lead_notifications

    paths.app             = 'lib/app'
    paths.app.controllers = 'lib/app/lead_notifications/controllers'
    paths.app.views       = 'lib/app/lead_notifications/views'
    paths.app.models      = 'lib/app/lead_notifications/models'
    paths.lib             = 'lib/app/lead_notifications/lib'
    paths.lib.tasks       = 'lib/app/lead_notifications/lib/tasks/tasks.rake'

    initializer 'lead_notifications.init_controller_hooks', :after => :set_load_path do |app|
      require 'app/lead_notifications/mailers/lead_notification_mailer'
      require 'app/lead_notifications/lib/controller_hooks'
    end
  end
end
