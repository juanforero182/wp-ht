WhatsappSdk.configure do |config|
  config.access_token = 'EAALzZB7dhMZAQBOzyRgmVZAaLWmfsoelru6IUYkosJU7elG0ZACPvnn55J8d8thyYHJW24ZAzdZAZBVQzYovq1kCwFJVtAZAeYtLNYDnyfVKrwR9Asidkdye181SGpbZBLmQMvomhriKOz8GiZBLb3gsMZCloXaBWQvwCCX9Hp8ZC8RC2n0iQcHOZAqEJnZBZBeJZBY3qhys9Lj3RKMCcySkru8ZD'
  config.api_version = 'v19.0'
  config.logger = Logger.new(STDOUT) # optional, Faraday logger to attach
  config.logger_options = { bodies: true } # optional, they are all valid logger_options for Faraday
end
