Rails.application.config.middleware.use OmniAuth::Builder do
  
  provider :vkontakte, '6463385', '5PTeRMnde8VvQfDwXQl8'
  provider :github, '1eecefa5aa94a1903098', '99acc5535a047b873e0aa4ffad398f4a7c01e8e9'
end