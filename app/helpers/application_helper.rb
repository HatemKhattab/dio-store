module ApplicationHelper

	def number_to_euro(num)
		number_to_currency(num, :unit=>'€', format: "%n %u")
	end

end
