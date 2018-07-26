# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
	$(document).on 'change', '#pacient_frequenceDrinking', ->
			drink = $('#pacient_frequenceDrinking option:selected').val();
			if  drink is "Nunca bebeu"
				$('#already_drank').fadeOut();
				$('#pacient_startedDrinking').val(0);
				$('#pacient_stopedDrinking').val(0);
			else
				$('#already_drank').fadeIn();


	$(document).on 'change', '#pacient_frequenceSmoking', ->
			smoke = $('#pacient_frequenceSmoking option:selected').val();
			if  smoke is "Nunca fumou"
				$('#already_smoked').fadeOut();
				$('#pacient_startedTabagism').val(0);
				$('#pacient_stopedSmoking').val(0);
			else
				$('#already_smoked').fadeIn();