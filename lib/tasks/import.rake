require 'csv'
desc "Imports a CSV file into an Active Record Table"
task :import => [:environment] do
	CSV.foreach('public/seeddata/Sample Data.csv', :headers => false) do |row|
		Counter.create( :fullname => row[1], :currency =>row[3], :listedBoard => row[11], :sgxcode => row[14])
	end
end