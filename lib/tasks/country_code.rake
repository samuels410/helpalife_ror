namespace :db do
  task :country_code => :environment do
    require 'csv'
    csv_text = File.read('public/csv/country_code.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      code = "+"++row['code']
      phone_extension = PhoneExtension.create!(code: code, name: row['name'])
      puts "PhoneExtension created: #{phone_extension.code} and #{phone_extension.name}"
    end
  end
end
