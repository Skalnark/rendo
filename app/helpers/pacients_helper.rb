module PacientsHelper
  def checked(area)
    @pacient.whatDrinked.nil? ? false : @pacient.whatDrinked.match(area)
  end
end
