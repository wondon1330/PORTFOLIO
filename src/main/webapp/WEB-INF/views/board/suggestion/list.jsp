<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/board/list.css">


<div id="homeMain">
	<div id="bd_viewbody">
         <div id="bd_title"><h1>건의사항</h1></div>
         <c:forEach var="sr" items="${sr }" >
         	<div id="srboard" style="display: none" data-boardid="${sr.board_id }">board_id : ${sr.board_id }</div>
         	<div id="srreceiver" style="display: none" data-receiver="${sr.receiver }">employee_userid : ${sr.receiver }</div>
         	<div id="srsender" style="display: none" data-sender="${sr.sender}">sender : ${sr.sender}</div>
         </c:forEach>
			<div class="bd_viewcategory">
				<div id="bd_category"><a href="${cpath }/board/notice/list">공지사항</a></div>
				<div id="bd_category"><a href="${cpath }/board/suggestion/list">건의사항</a></div>
				<div id="bd_category"><a href="${cpath }/board/event/list">경조사</a></div>
				<div id="bd_category"><a href="${cpath }/board/club/list">자유게시판</a></div>
			</div>
            
            
         
            <div id="bd_content">
				<table id="bd_viewTable">
					<thead>
						<tr>
							<th class="bd_idx">No</th>
							<th class="bd_boardtitle">Title</th>
							<th class="bd_writer">작성자</th>
							<th class="bd_date">작성 일자</th>
						</tr>
					</thead>
					<tbody>
	        			<c:forEach var="suggestionDTO" items="${suggestionList}">
		       			<c:set var="selectUser" value="${suggestionDTO.receiver }"/>
		       			<c:set var="selectUserID" value="${login.employee_userid }"/>
		       			<c:set var="selectSender" value="${suggestionDTO.sender }"/>
	        			<tr>
	       		     		<td class="bd_idx">${suggestionDTO.board_idx}</td>
		                    <c:choose>
			       				<c:when test="${suggestionDTO.isnotice eq 0 }">
	                   				<td class="bd_boardtitle"><a href="${cpath}/board/selectOne/${suggestionDTO.board_idx}">[☠️건의사항☠️] ${suggestionDTO.board_title}</a></td>
		                 	 	</c:when>
		       					<c:when test="${suggestionDTO.isnotice eq 1 }">
		       						<c:choose>
		       							<c:when test="${fn:contains(selectUser, selectUserID) or selectSender eq login.employee_idx }">
            		       					<td id="bd_boardtitle" style="color: blue" class="bd_boardtitle"  onclick="bd_isnotice(event)">[비공개] ${suggestionDTO.board_title }<div style="display: none" id="bd_board_idx">${suggestionDTO.board_idx}</div></td>
                  						</c:when>
		       							<c:when test="${not fn:contains(selectUser, selectUserID) }">
                   							<td id="bd_boardtitle" style="color: red" class="bd_boardtitle"  onclick="bd_isnotice(event)">[비공개]<div style="display: none" id="bd_board_idx">${suggestionDTO.board_idx}</div></td>
                  						</c:when>
                  					</c:choose>
	                 		 	</c:when>
	                 	 	</c:choose>
	                    	<td class="bd_writer">${suggestionDTO.employee_name}</td>
	                    	<td class="bd_date">${suggestionDTO.write_date}</td>
	                    </tr>
        			</c:forEach>
        		</tbody>
			</table>       
		<div id="bd_write"><a href="${cpath }/board/suggestion/insert">게시글 작성</a></div>
		</div> 	<!-- end of #bd_content -->
		
        	<div id="bd_foot">
<!--         		<div class="bd_footLeft"></div> -->
	        	<div id="bd_paging">
	            	<c:if test="${paging.prev }">
						<a href="${cpath }/board/suggestion/list?page=${paging.begin - paging.perPage}&bd_search=${paging.bd_search}&bd_column=${paging.bd_column }">[이전]</a>
					</c:if>
					
					<c:forEach var="i" begin="${paging.begin }" end="${paging.end }">
						<a href="${cpath }/board/suggestion/list?page=${i}&bd_search=${paging.bd_search}&bd_column=${paging.bd_column }">[${i }]</a>
					</c:forEach>
					
					<c:if test="${paging.next }">
						<a href="${cpath }/board/suggestion/list?page=${paging.end + 1}&bd_search=${paging.bd_search}&bd_column=${paging.bd_column }">[다음]</a>
					</c:if>
	            </div>
            </div>	<!-- end of #bd_foot -->
            
     	 </div>	<!-- end of #bd_viewbody -->
         <div id="bd_search">
         	<form id="bd_searchURL" method="POST" action="${cpath }/board/suggestion/list">
	     		<p><select id="bd_select" name="bd_column">
		 			<option value="board_title">제목으로 검색</option>
		           	<option value="employee_name">작성자로 검색</option>
	            </select></p>
		        <p><input id="bd_inputSearch" type="text" name="bd_search" onkeyup="bdSearch(event)" placeholder="검색어를 입력하세요"></p>
		        <p><input id="bd_submit" type="submit" name="bd_submit" value="검색">
	        </form>
        </div>	<!-- end of #bd_search -->
</div>	<!-- end of #homemain -->


<script>
const bd_boardtitle = document.getElementById('bd_boardtitle')

 // sendreceiver
    let bd_employee_userid = '${login.employee_userid}' 
    let bd_employee_idx = '${login.employee_idx}'
    let srboard = document.querySelectorAll('#srboard');
    let srreceiver = document.querySelectorAll('#srreceiver');
    let srsender = document.querySelectorAll('#srsender');
    let bd_board_id = [];
    let bd_receiver = [];
    let bd_sender = [];
    
    for(let i = 0; i < srboard.length; i++) {
    	bd_board_id.push({
    		bd_board_id : srboard[i].getAttribute('data-boardid')
    	})
    }
    for(let i = 0; i < srreceiver.length; i++) {
    	bd_receiver.push({
    		bd_receiver : srreceiver[i].getAttribute('data-receiver')
    	})
    }
    for(let i = 0; i < srsender.length; i++) {
    	bd_sender.push({
    		bd_sender : srsender[i].getAttribute('data-sender')
    	})
    }
    
function bd_isnotice(event) {
	let bd_idx = event.target.childNodes[1].innerText;
	console.log(bd_idx);
	let receiverdata = bd_receiver[0].bd_receiver;
	receiverArr = receiverdata.split(',');
	console.log('receiverArr : ' + receiverArr);
	let bd_right = '';
	let a;
	let b;
	for(let i = 0; i < bd_sender.length; i++) {
		if(bd_idx === bd_board_id[i].bd_board_id) {
			a = i;
			console.log('게시글 번호' + a)
			break;
		}
	}
	
	console.log('a : ' + a)
	let bd_receiverArr = bd_receiver[a].bd_receiver.split(',')
	console.log(bd_receiverArr[1])
	console.log('bd_employee_userid : ' + bd_employee_userid)
	
	for(let j = 0; j < bd_receiverArr.length; j++) {
		if(a !== null && bd_employee_userid === bd_receiverArr[j]) {
			console.log('bd_receiver : ' + bd_receiverArr[j])
			b = j;
		}
	}
	
	console.log('b : ' + b)
	if(bd_employee_idx === bd_sender[a].bd_sender || bd_employee_userid === bd_receiverArr[b]) {
 		console.log('idx : ' + bd_employee_idx)
 		console.log('sender : ' + bd_sender[a].bd_sender)
 		console.log('usrid : ' + bd_employee_userid)
 		console.log('receiver : ' + bd_receiver[a].bd_receiver[b])
 		bd_right = 'Y'
 	}
 	else{
 		bd_right = 'N'
 	}
 	console.log(bd_right)
 	if(bd_right === 'N') {
 		alert('열람 권한이 없습니다')			
 		location.href = cpath + '/board/view'
 	}
 	else{
 		location.href = cpath + '/board/selectOne/' + bd_idx	
 	}
}

</script>
</body>
</html>