namespace :slurp do
  desc "TODO"
  task connections: :environment do
    require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "connections.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  puts row.to_hash
  c = Connections.new
  c.user = row["street"]
  c.comment = row["city"]
  c.photo = row["zip"]
  c.company = row["state"]
  c.connections_of_connections = row["beds"]
  c.save

  end
end
end
