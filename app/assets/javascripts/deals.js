$(document).ready(function() {
	//~ Binding the click event of arrows to open the forms
	$(".arrow").click(function() {
		$(this).parents("li").toggleClass('active')
		$(this).parents("li").children('.content').children('.block').slideToggle('slow');
		return false;
	});
	//~ Attaching ajax callbacks for form
	$('#slow_hour_offer_form').bind('ajax:before', function() {  
		$('#slow_hour_spinner').show();
	});
	
	$('#slow_hour_offer_form').bind('ajax:complete', function() {  		
    $(this).parents("li").toggleClass('active');
		setTimeout(function() {$('#slow_hour_spinner').hide()}, 1000);
		setTimeout(function() {$('#slow_hour_success').show()}, 1000);
		setTimeout(function() {$('#slow_hour_success').hide()}, 3000);
		$(this).parents("li").children('.content').children('.block').delay(4000).slideToggle('slow');
	});
	
	$('#recruitment_offer_form').bind('ajax:before', function() {  
		$('#recruitment_spinner').show();
	});
	
	$('#recruitment_offer_form').bind('ajax:complete', function() {  
    $(this).parents("li").toggleClass('active');
		setTimeout(function() {$('#recruitment_spinner').hide()}, 1000);
		setTimeout(function() {$('#recruitment_success').show()}, 1000);
		setTimeout(function() {$('#recruitment_success').hide()}, 3000);
		$(this).parents("li").children('.content').children('.block').delay(3000).slideToggle('slow');
		
	});
	
	$(".social .week-list li").click(function() {
		$(this).toggleClass('on');
		var chkbox = $(this ).children(':checkbox');
		chkbox.prop("checked", !(chkbox.prop("checked")));
		return false;
	});
	
});