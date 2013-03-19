module ApplicationHelper
#aide pour login via modal
def resource_name
  :user
end

def resource
  @resource ||= User.new
end

def devise_mapping
 @devise_mapping ||= Devise.mappings[:user]
end
#fin aide
end
