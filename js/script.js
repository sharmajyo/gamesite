$(document).ready(function(){

	$(".laposthead").click(function(e){
		var currentlabody=$(e.currentTarget).next();
		if(currentlabody.is(':hidden'))
		{
			currentlabody.slideDown('slow');
		}
		else
		{
			currentlabody.slideUp('slow');
		}
		
	})

	$("#ch").hover(function(){
		$("#chm").stop(true,true).slideDown('slow');
	},
	function(){
		$("#chm").stop(true,true).slideUp('slow');
	});

	$('#about').click(function(){
		if($('#aboutDiv').is(':hidden'))
		{
			$('#contactDiv').slideUp('slow');
			$("#searchDiv").slideUp('slow');
			$('#aboutDiv').slideDown('slow');
		}
		else
		{
			$('#aboutDiv').slideUp('slow');
		}	
	})

	$('#contact').click(function(){

		if($('#contactDiv').is(':hidden'))
		{
			$('#aboutDiv').slideUp('slow');
			$("#searchDiv").slideUp('slow');
			$('#contactDiv').slideDown('slow');
		}
		else
		{	
			$('#contactDiv').slideUp('slow');
		}
	})

	getChampions();

	$('#closeBtn').click(function(){
		$('#infoDiv').slideUp('slow');
		$('#freechamp').toggleClass('freechampextended');
		$('#closeBtn').toggleClass('showCloseBtn');
	});

	$('#showContent').click(function(){
		if($("#mediaDetailMore").is(':hidden'))
		{
			$('#showContent').html("Show Less");
			$("#mediaDetailMore").slideDown('slow');
		}
		else
		{
			$('#showContent').html("Show More");
			$("#mediaDetailMore").slideUp('slow');
		}

		
	});

	$('#searchInput').on("keyup",function(){
		var loc = location.pathname;
		var dir = loc.substring(0, loc.lastIndexOf('/'))+'/inc/search.php';
		var value=$.trim($('#searchInput').val());

		if(value.length>0){
			$.ajax({
				type:'POST',
				url:dir,
				data:{'keyword':value},
				success:function(data){
					if($('#searchDiv').is(':hidden'))
					{
						$('#aboutDiv').slideUp('slow');
						$("#contactDiv").slideUp('slow');
						$('#searchDiv').slideDown('slow');
					}
					$("#searchDiv").html(data);
				}
			});
		}
		else
		{
			$("#searchDiv").html('');
						$('#searchDiv').slideUp('slow');
		}	
		
	})

})

function getChampions(){
	var loc = location.pathname;
	var dir = loc.substring(0, loc.lastIndexOf('/'))+'/inc/championsinfo.php';
	$('#freechampDiv').children().remove();

	$.get(dir,{action:'getAll'},function(result){
		if(result instanceof Array && result.length>0)
		{
			for(var i=0; i<result.length; i++)
			{
				var image="<img id='champImg' onClick='getChampionInfo()' src='./img/"+result[i].imagePath+"' alt='"+result[i].name+"'/>";
				$('#freechampDiv').append(image);
			}
		}
		else
		{

		}	
		
	},'json')
}

function getChampionInfo(){
	var name= event.target.alt;
	var loc = location.pathname;
	var dir = loc.substring(0, loc.lastIndexOf('/'))+'/inc/championsinfo.php';
	
	$.get(dir,{name:name,action:'getChampInfo'},function(data){
		$('#infoDiv').html(data);
		if($('#infoDiv').is(':hidden'))
		{
			$('#infoDiv').slideDown('slow');
			$('#closeBtn').toggleClass('showCloseBtn');
			$('#freechamp').toggleClass('freechampextended');
		}			
	})
}