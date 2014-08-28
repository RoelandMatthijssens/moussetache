$(document).ready(function(){
	var headerHeight = $(".header").height();
	var bannerHeight = $(".top_banner").height();
	var documentHeight = $(document).height();
	var fullHeight = documentHeight - headerHeight+bannerHeight;
	$(".panel").height(fullHeight);
	console.log(fullHeight);
});
