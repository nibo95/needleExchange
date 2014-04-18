class ReportsController < ApplicationController
	def index
	end

	def finished
	end

	# def threeMonthCounter
	# 	count = 0
	# 	codes = Array.new

	# 	Visit.all.after_date(3.months.ago).each do |visit|
	# 		if codes.index(visit.code) == nil 
	# 			codes = codes + [visit.code]
	# 			count = count +1
	# 		end
	# 	end

	# 	return count
	# end
end