module PacientsHelper
	def format_phone_number(number)
    return "(#{number[0..2]})#{number[3..5]}-{number[6..-1]}"
  end
end
