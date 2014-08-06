require 'rspec'
require 'pg'

DB = PG.connect({:dbname => 'office_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM appointments *;")
    DB.exec("DELETE FROM doctors *;")
    DB.exec("DELETE FROM patients *;")
    DB.exec("DELETE FROM insurance *;")
  end
end
