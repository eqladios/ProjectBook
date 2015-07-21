OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '941005685958918', '3eb8e2a1b1e65bfeaaeb3c8f1971fe3c'
end