var socket = io.connect('http://localhost:3000');
var chat = $('#chatText');
var listMsg = $('#mgsChat');
var listRooms = $('#listRooms');
if(typeof(localStorage.spId) !== "undefined"){
	socket.emit('reqNameSp', localStorage.spId);
}

$('#logoutSp').click(function(event) {
	localStorage.removeItem('spId');
	localStorage.removeItem('spName');
	localStorage.removeItem('supporter');
	location.reload();
});

chat.keyup(function(event) {
	if(event.keyCode == 13){
		if($(this).val() !="" && $(this).val() !="\n"){
			var html = '<div class="item me">';
					html += '<div class="msg-item">'+$(this).val()+'</div>';
					html += '</div>';
			listMsg.append(html);
			autoScroll();
			socket.emit('sendchat', $(this).val(), localStorage.spName, localStorage.spId, 2);
		}
		$(this).val('');
	}
});
socket.on('message', function(msg, name){
	var html = '<div class="item">';
			html += '<div class="msg-item">'+msg+'</div>';
			html += '</div>';
	listMsg.append(html);
	autoScroll();
});

socket.emit('getrooms', true);
socket.on('listrooms', function(rooms) {
	getRooms(rooms);
});
socket.on('updaterooms', function(rooms){
	listRooms.empty();
	getRooms(rooms);
});
socket.on('updaterooms2', function(rooms, curr_room){
	listRooms.empty();
	getRooms(rooms, curr_room);
});
socket.on('clientMsg', function(msg, cusname){
	var html = '<div class="item">';
			html += '<div class="msg-item">'+msg+'</div>';
			html += '</div>';
	listMsg.html(html);
	$('#chatSP .customername').html(' với '+cusname);
	autoScroll();
});

socket.on('endchatclient', function(msg){
	listMsg.append('<div class="headerMsg">'+msg+'</div>');
	autoScroll();
});
socket.on('resNameSp', function(name){
	localStorage.spName = name;
});
function autoScroll(){
	if(listMsg.height() > 300){
		$('.group-message').scrollTop(listMsg[0].scrollHeight);
	}
}
function getRooms(rooms, curr_room = null){
	if(rooms.length > 0){
		$.each(rooms ,function(index, el) {
			if(el == null){
				//listRooms.append('<div class="list-group-item">Không có phòng chat nào</div>');
			}
			else if(el == curr_room){
				listRooms.append('<a href="javascript:void(0)" class="list-group-item"><strong>'+el+'</strong></a>');
			}
			else{
				if(curr_room == null){
					listRooms.append('<a href="javascript:void(0)" class="list-group-item" onclick="switchRoom(\''+ el +'\', '+curr_room+')">'+el+'</a>');
				}
				else
					listRooms.append('<a href="javascript:void(0)" class="list-group-item" onclick="switchRoom(\''+ el +'\', \''+curr_room+'\')">'+el+'</a>');
			}
		});
	}
}
function switchRoom(room, cur = null){
	socket.emit('switchRoom', room, cur, localStorage.spName);
}
function getCaret(el) { 
    if (el.selectionStart) { 
        return el.selectionStart; 
    } else if (document.selection) { 
        el.focus();
        var r = document.selection.createRange(); 
        if (r == null) { 
            return 0;
        }
        var re = el.createTextRange(), rc = re.duplicate();
        re.moveToBookmark(r.getBookmark());
        rc.setEndPoint('EndToStart', re);
        return rc.text.length;
    }  
    return 0; 
}