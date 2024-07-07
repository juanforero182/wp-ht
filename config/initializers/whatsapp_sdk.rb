WhatsappSdk.configure do |config|
  config.access_token = ENV['TOKEN_WHATSAPP']
  config.api_version = ENV['VERSION_META']
  config.logger = Logger.new(STDOUT) # optional, Faraday logger to attach
  config.logger_options = { bodies: true } # optional, they are all valid logger_options for Faraday
end
