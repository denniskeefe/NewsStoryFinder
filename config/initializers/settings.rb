class Settings < Settingslogic
  source "#{Rails.root}/config/newsstoryfinder.yml"
end

Settings['email'] ||= Settingslogic.new({})
Settings.email['from'] ||= 'nsf@example.com'

Settings['omniauth'] ||= Settingslogic.new({})
Settings.omniauth['enabled'] ||= false
Settings.omniauth['providers'] ||= []
