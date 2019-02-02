$(document).ready(function(e){
	BgImage();
	$(window).resize(function(e){
		BgImage();
	});
	$(".toggle_menu").click(function(e){
		$(".menu").addClass("active");
		$(".overlay").show();
	});
	$(".menupopup").click(function(e){
		$(".menu").removeClass("active");
		$(".overlay").hide();
	});



	// edit popup


	$(document).on("click","#editMainDatalist",function(e){
		e.preventDefault();
		$(".edit_form").addClass("active");
		var stuff = $(this).data('info').split(',');
        fillmodalData(stuff);
        availableDocument(stuff);
		$(".overlay").show();
	});

	function fillmodalData(details){
		var index;
	    $('#id').val(details[14]);
	    $('#first_name').val(details[0]);
	    $('#last_name').val(details[1]);
	    $('#city').val(details[2]);
	    $('#country').val(details[3]);
	    $('#city_of_birth').val(details[4]);
	    $('#country_of_birth').val(details[5]);
	    $('#nationality').val(details[6]);
	    if (details[7] =="NID") {
	    	index = 1;
	    }else if(details[7]=="Passport"){
	    	index = 0;
	    }else if(details[7]=="Driving licence"){
	    	index = 2;
	    }else{
	    	index=3;
	    }
	    document.getElementById("document_type").selectedIndex = index;
	    $('#document_number').val(details[8]);
	    $('#issuing_authority').val(details[9]);
	    $('#issue_on').val(details[10]);
	    $('#valid_until').val(details[11]);
	    document.getElementById('order_amount').innerHTML = details[12];
	    document.getElementById('number_of_document').innerHTML = details[13];
	    document.getElementById('mySpan').innerHTML = details[14];
	    console.log(details[15]);
	    if (details[15]==0) {
	    	document.getElementById("follow_up").checked = false;
	    	// $('#follow_up').val(0);
	    } else {
	    	document.getElementById("follow_up").checked = true;
	    	// $('#follow_up').val(1);
	    }
	    document.getElementById('comment').innerHTML = details[16];
	}


	//date conversion

	function formatDate(date) {
	    var d = new Date(date),
	        month = '' + (d.getMonth() + 1),
	        day = '' + d.getDate(),
	        year = d.getFullYear();

	    if (month.length < 2) month = '0' + month;
	    if (day.length < 2) day = '0' + day;

	    return [year, month, day].join('-');
	}




	function availableDocument(details){
		var user_id = details[14];

	    $.ajax({
	      url: '/app/kyc/get-details',
	      type: 'GET',
	      data: 'id='+user_id,
	      dataType: 'JSON',
	      success: function(data, textStatus, jqXHR){

				jQuery.each(data, function(index, item) {
		            console.log(item.file_name,index)
		            var container = document.getElementById("document_list");
		            container.innerHTML +=
		            '<li>'+
		            '<a href="#"' +'data-info="'+'images/'+item.name+'"'+'>'+
                            '<img src="images/icon_01.png" alt="">'+
                            '<span>'+item.name+'</span>'+
                    '</a>'+
                    '</li>';
		        	});

			     },
	      error: function(jqXHR, textStatus, errorThrown){

	      },
	    });
	}


	$(".editpopup").click(function(e){
		$(".edit_form").removeClass("active");
		$(".overlay").hide();
	});





	$('#editform').submit(function( e ) {
		e.preventDefault();
		var security = $('input[name="follow_up"]').prop('checked');
		var data= {
				'id': $('#id').val(),
                'first_name': $('#first_name').val(),
                'last_name': $('#last_name').val(),
                'city': $('#city').val(),
                'country': $('#country').val(),
                'city_of_birth': $('#city_of_birth').val(),
                'country_of_birth': $('#country_of_birth').val(),
                'nationality': $('#nationality').val(),
                'document_type': $('#document_type').val(),
                'document_number': $('#document_number').val(),
                'issuing_authority': $('#issuing_authority').val(),
                'issue_on': $('#issue_on').val(),
                'valid_until': $('#valid_until').val(),
                'comment': $('#comment').val(),
           	}
		if (document.getElementById('follow_up').checked) {
			data.follow_up=1;
		}else{
			data.follow_up=0;
		}
        $.ajax({
        	headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            type: 'POST',
            url: '/editItem',
            dataType: 'JSON',
            data:data,
            success: function(data,textStatus,jqXHR) {
            	$(".documet_box").removeClass("active");
            	location.reload();
			},
			error: function(jqXHR, textStatus, errorThrown){

	      },
        });
    });










//image/document viewer

	$(document).on( 'click','.documentLink a', function(e)
	{
	 e.preventDefault();
		$(".documet_box").addClass("active");
		var stuff = $(this).data('info').split(',');
  		showImage(stuff);
		$(".overlay").show();
	});

	function showImage(details){
		console.log(details[0]);
		// $('#imageshow').val(details[0]);
		$("#imageshow").attr("src", details[0]);

	}



//after save button click


$(".documentpopup").click(function(e){
    $(".documet_box").removeClass("active");
});
});
function BgImage(){
    var windowheight = $(window).height();
    $(".login_outer").css("min-height",windowheight);
}







//search With out Document

$('#withoutDoc').on('change', function(){
var filter_value = $('input[id="withoutDoc"]').prop('checked');
var new_url = '/customSearch/document/'+filter_value;
window.location.replace(new_url)
});


//search with follow Up check button

$('#followUp').on('change', function(){
var filter_value = $('input[id="followUp"]').prop('checked');
var new_url = '/customSearch/follow-up/'+filter_value;
window.location.replace(new_url)
});


//search with internal Ok check button

$('#internalOk').on('change', function(){
var filter_value = $('input[id="internalOk"]').prop('checked');
var new_url = '/customSearch/internal-ok/'+filter_value;
window.location.replace(new_url)
});


//internal ok update via ajax;

function internalOkFunction(link,userId){
	//e.preventDefault();
	var id =userId;
	var fieldName= "internalCheck"+userId;
	console.log(fieldName);
    var cValue = $('#'+fieldName).prop('checked');
    if (cValue) {
    	checkValue=11;
    }else{
    	checkValue=22;
    }
    console.log(checkValue);

    $.ajax({
      headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
      type:'POST',
      url: '/app/kyc/internal/update',
      dataType: 'JSON',
      data: {'internal':checkValue,'id':id},
      success:function(data) {
        console.log('success');
      }
    });
}

//external ok update via ajax
function externalOkFunction(link,userId){
	//e.preventDefault();
	var id =userId;
	var fieldName= "externalCheck"+userId;
	console.log(fieldName);
    var cValue = $('#'+fieldName).prop('checked');
    if (cValue) {
    	checkValue=11;
    }else{
    	checkValue=22;
    }
    console.log(checkValue);

    $.ajax({
      headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
      type:'POST',
      url: '/app/kyc/external/update',
      dataType: 'JSON',
      data: {'external':checkValue,'id':id},
      success:function(data) {
        console.log('success');
      }
    });
}

$('#userDetailsEdit').submit(function( e ) {
	console.log('click');
		e.preventDefault();
		var active = $('input[name="active"]').prop('checked');
		var data= {
				'id': $('#id').val(),
                'firstName': $('#firstName').val(),
                'lastName': $('#lastName').val(),
                'email': $('#email').val(),
                'userName': $('#userName').val(),
                'createdAt': $('#createdAt').val(),
                'roleName': $('#roleName').val(),
                'active': active,

           	}
		if (document.getElementById('active').checked) {
			data.active=11;
		}else{
			data.active=22;
		}
        $.ajax({
        	headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            type: 'POST',
            url: '/user/edit',
            dataType: 'JSON',
            data:data,
            success: function(data,textStatus,jqXHR) {
            	$(".edit_form").removeClass("active");
            	console.log('success')
            	location.reload();
			},
			error: function(jqXHR, textStatus, errorThrown){

	      },
        });
    });


function fillmodalDataUser(details){
		var index;
	    $('#id').val(details[0]);
	    $('#firstName').val(details[1]);
	    $('#lastName').val(details[2]);
	    $('#email').val(details[3]);
	    $('#userName').val(details[4]);
	    $('#createdAt').val(details[5]);
	    console.log(details[6]);
	    if (details[6]=="admin") {
	    	index=0;
	    }
	    else if(details[6]=="internal"){
	    	index=1;
	    }else{
	    	index = 2;
	    }
		document.getElementById("roleName").selectedIndex = index;
	    $('#active').val(details[7]);
	    if (details[7]=='NED') {
	    	document.getElementById("active").checked = false;
	    	// $('#follow_up').val(0);
	    } else {
	    	document.getElementById("active").checked = true;
	    	// $('#follow_up').val(1);
	    }

	}

	$(document).on("click","#editUserPop",function(e){
		e.preventDefault();
		$("#addUser").addClass("active");
		var stuff = $(this).data('info').split(',');
        fillmodalDataUser(stuff);
		$(".overlay").show();
	});



$("#addUserbtn").click(function(e){
		e.preventDefault();
		$("#addUserrr").addClass("active");
		$(".overlay").show();
	});


//check button search


$(function() {
  table = $('#dataList').dataTable();
})

function filterWithoutDoc() {
  //build a regex filter string with an or(|) condition
  var types = $('input:checkbox[name="withoutDoc"]:checked').map(function() {
    return '^' + this.value + '\$';
  }).get().join('|');
  //filter in column 0, with an regex, no smart filtering, no inputbox,not case sensitive
  table.fnFilter(types, 13, true, false, false, false);

}

function filterFollowUp() {
  //build a regex filter string with an or(|) condition
  var types = $('input:checkbox[name="followupsearch"]:checked').map(function() {
    return '^' + this.value + '\$';
  }).get().join('|');
  //filter in column 0, with an regex, no smart filtering, no inputbox,not case sensitive
  table.fnFilter(types, 15, true, false, false, false);

}

function filterInternal() {
  //build a regex filter string with an or(|) condition
  var types = $('input:checkbox[name="internalsearch"]:checked').map(function() {
    return '^' + this.value + '\$';
  }).get().join('|');
  //filter in column 0, with an regex, no smart filtering, no inputbox,not case sensitive
  table.fnFilter(types, 16, true, false, false, false);

}


