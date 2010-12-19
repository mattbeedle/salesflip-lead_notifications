module LeadNotifications
  class LeadNotificationMailer < ActionMailer::Base

    def lead_notification( lead )
      @lead = lead
      mail(:to => ['florian.behn@1000jobboersen.de',
                   'matt.beedle@1000jobboersen.de',
                   'annika.fleischer@1000jobboersen.de'],
        :subject => 'New Lead',
        :from => 'service@salesflip.com')
    end
  end
end
