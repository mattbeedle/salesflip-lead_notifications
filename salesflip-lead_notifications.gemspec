# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{salesflip-lead_notifications}
  s.version = "0.0.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Beedle"]
  s.date = %q{2010-12-19}
  s.description = %q{A notification email is sent to all users when a new lead arrives}
  s.email = %q{matt.beedle@1000jobboersen.de}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    ".rvmrc",
    "README",
    "Rakefile",
    "VERSION",
    "lib/app/lead_notifications/lib/controller_hooks.rb",
    "lib/app/lead_notifications/lib/tasks/tasks.rake",
    "lib/app/lead_notifications/mailers/lead_notification_mailer.rb",
    "lib/app/lead_notifications/views/lead_notifications/lead_notification_mailer/lead_notification.text.erb",
    "lib/lead_notifications.rb",
    "lib/lead_notifications/engine.rb",
    "salesflip-lead_notifications.gemspec"
  ]
  s.homepage = %q{http://github.com/mattbeedle/salesflip-lead_notifications}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Add lead notifications to Salesflip}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

