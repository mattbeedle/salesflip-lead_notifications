module LeadNotifications
  class LeadNotificationMailer < ActionMailer::Base

    def lead_notification( lead )
      @lead = lead
      mail(:to => lead.user.company.users.map(&:email), :subject => 'New Lead',
        :from => 'service@salesflip.com')
    end
  end
end