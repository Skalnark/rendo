# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#Code to hide drinks with the pacient don't drink
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

#Code to hide fumes with the pacient don't smoke
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

	#Code to uncheck people who had cancer if no one is selected
	$(document).on 'click', '#pacient_whoHadCancer_ninguém', ->
		$('#pacient_whoHadCancer_não_sei').prop('checked', false);
		cancer = document.getElementsByClassName("had_cancer");
		for c in cancer
			c.checked = false;

	#Code to uncheck people who had cancer if the pacient dont know is selected
	$(document).on 'click', '#pacient_whoHadCancer_não_sei', ->
		$('#pacient_whoHadCancer_ninguém').prop('checked', false);
		cancer = document.getElementsByClassName("had_cancer");
		for c in cancer
			c.checked = false;

	#Code to uncheck dont know or no one options if someone had cancer
	$(document).ready ->
		$(document).on 'click', ".had_cancer", ->
			$('#pacient_whoHadCancer_ninguém').prop('checked', false);
			$('#pacient_whoHadCancer_não_sei').prop('checked', false);
