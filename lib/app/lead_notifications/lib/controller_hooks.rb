class LeadNotifications::ControllerHooks < Salesflip::Callback::Base
  def app_after_filter( controller, context = {} )
    return unless controller.controller_name == 'leads' && controller.action_name == 'create'
    lead = controller.instance_variable_get("@lead")
    if lead && lead.valid? && !controller.request.format.html?
      LeadNotifications::LeadNotificationMailer.lead_notification(lead).deliver
    end
  end
end
