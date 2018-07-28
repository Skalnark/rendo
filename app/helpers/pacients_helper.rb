module PacientsHelper

  def concatenateDrinks(area)
    if @pacient.whatDrinked.nil?
      @pacient.whatDrinked = area
    elsif @pacient.whatDrinked == "Destilados" && area == "Fermentados"
      @pacient.whatDrinked = "Destilados e Fermentados"
    elsif @pacient.whatDrinked == "Fermentados" && area == "Destilados"
      @pacient.whatDrinked = "Destilados e Fermentados"
    end
  end

  def concatenateSmoke(area)
  	if(@pacient.whatSmoked.nil?)
  	  @pacient.whatSmoked = area
  	elsif(!@pacient.whatSmoked.nil?)
  	  @pacient.whatSmoked += (", " + area)
    end

  end

  def instantiate
    @pacient.whatSmoked = " "
  end
end
