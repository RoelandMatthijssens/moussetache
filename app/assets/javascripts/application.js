// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require panes
//= require_tree .

$(document).ready(function(){
	resetPanelHeight();
	initLinks();
});


function initLinks(){
	$(".link").each(function(index, i){
		simulateLink(i);
	});
}

function simulateLink(selector){
	var link = $(selector);
	var target = link.data("target");
	link.mousedown(function(event){
		switch(event.which){
			case 1:
				window.location=target;
				break;
			case 2:
				window.open(target,'_newtab');
				break;
			case 3:
				break;
		};
	});
}
