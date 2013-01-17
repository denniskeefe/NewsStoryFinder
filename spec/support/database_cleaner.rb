RSpec.configure do |config|
  config.before do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:transaction)

    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end
end
