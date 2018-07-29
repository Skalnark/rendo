# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
	$(document).on 'change', '#pacient_frequenceDrinking', ->
			drinker = $('#pacient_frequenceDrinking option:selected').val();
			
			if  drinker is "Nunca bebeu"
				$('#already_drank').fadeOut();
				$('#pacient_startedDrinking').val(0);
				$('#pacient_stopedDrinking').val(0);
				drinks = document.getElementsByClassName("drinks");
				for d in drinks
					d.checked = false;

			else
				$('#already_drank').fadeIn();


	$(document).on 'change', '#pacient_frequenceSmoking', ->
			smoker = $('#pacient_frequenceSmoking option:selected').val();
			
			if  smoker is "Nunca fumou"
				$('#already_smoked').fadeOut();
				$('#pacient_startedTabagism').val(0);
				$('#pacient_stopedSmoking').val(0);
				fumes = document.getElementsByClassName("fumes");
				for f in fumes
					f.checked = false;

			else
				$('#already_smoked').fadeIn();