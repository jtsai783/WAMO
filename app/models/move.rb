require 'csv'

class Move < ActiveRecord::Base
	def self.import
		Dir.foreach('./framedata') do |item|
			next if item == '.' or item == '..'
			if File.extname(item) == '.csv'
				charname = File.basename(item, ".*")
				rowcount = 0
				CSV.foreach("./framedata/#{item}") do |row|
					if rowcount >= 1
						begin
							startup = eval(row[6])
						rescue Exception
							startup = 0
						end
						Move.create(
							name: row[0],
							startup: startup,
							char: charname,
							active: row[7],
							recovery: row[8],
							adv_block: row[9],
							adv_hit: row[10]
						)				
					end
					rowcount += 1
				end
			end
		end
	end
end
