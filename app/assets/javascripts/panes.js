$(document).ready(function(){
	resetPanelHeight();
});

function resetPanelHeight(){
	var headerHeight = $(".header").height();
	var bannerHeight = $(".top_banner").height();
	var documentHeight = $(document).height();
	var fullHeight = documentHeight - (headerHeight+bannerHeight);
	$(".panel").height(fullHeight);
	console.log(headerHeight);
	console.log(bannerHeight);
	console.log(documentHeight);
	console.log(fullHeight);
}
