RSpec.configure do |config|
  Capybara.default_max_wait_time = 2

  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :selenium, using: :headless_chrome, screen_size: [1400, 900] do |option|
      option.add_argument 'no-sandbox'
    end
  end
end
