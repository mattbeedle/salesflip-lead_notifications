class LeadNotifications::ControllerHooks < Salesflip::Callback::Base
  def app_after_filter( controller, context = {} )
    return unless controller.controller_name == 'leads' && controller.action_name == 'create'
    LeadNotifications::LeadNotificationMailer.lead_notification(
      controller.instance_variable_get("@lead")
    ).deliver
  end
end
