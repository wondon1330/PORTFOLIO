<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %>
<link type="text/css" rel="stylesheet" href="${cpath }/resources/css/board/list.css">

	
<div id="homeMain">
	 <div id="bd_viewbody">
         <div id="bd_title"><h1>자유게시판</h1></div>
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
		        	<c:forEach var="clubDTO" items="${clubList}">
		        		<tr>
		       		     	<td class="bd_idx">${clubDTO.club_idx}</td>
		                    <td class="bd_boardtitle"><a href="${cpath}/board/club/view/${clubDTO.club_idx}">${clubDTO.board_title}</a></td>
		                    <td class="bd_writer">${clubDTO.employee_name}</td>
		                    <td class="bd_date">${clubDTO.write_date}</td>
		                </tr>
	        		</c:forEach>
	        		</tbody>
	        	</table>
	        <div id="bd_write"><a href="${cpath }/board/club/insert">게시글 작성</a></div>
	        </div>	<!-- end of #bd_content -->
	        	
	        	
        	<div id="bd_foot">
<!--         		<div class="bd_footLeft"></div> -->
	        	<div id="bd_paging">
	            	<c:if test="${paging.prev }">
						<a href="${cpath }/board/club/list?page=${paging.begin - paging.perPage}&bd_search=${paging.bd_search}&bd_column=${paging.bd_column}">[이전]</a>
					</c:if>
					
					<c:set var="bd_search" value="${paging.bd_search }"/>
					<c:forEach var="i" begin="${paging.begin }" end="${paging.end }">
							<a href="${cpath }/board/club/list?page=${i}&bd_search=${paging.bd_search}&bd_column=${paging.bd_column}">[${i }]</a>						
					</c:forEach>
					
					<c:if test="${paging.next }">
						<a href="${cpath }/board/club/list?page=${paging.end + 1}&bd_search=${paging.bd_search}&bd_column=${paging.bd_column}">[다음]</a>
					</c:if>
	            </div>
            </div>	<!-- end of #bd_foot -->
            
		</div>	<!-- end of #bd_viewbody -->
         <div id="bd_search">
         	<form id="bd_searchURL" method="POST" action="${cpath }/board/club/list">
	     		<p><select id="bd_select" name="bd_column">
		 			<option value="board_title">제목으로 검색</option>
		           	<option value="employee_name">작성자로 검색</option>
	            </select></p>
		        <p><input id="bd_inputSearch" type="text" name="bd_search" onkeyup="bdSearch(event)" placeholder="검색어를 입력하세요"></p>
		        <p><input id="bd_submit" type="submit" name="bd_submit" value="검색">
	        </form>
        </div>	<!-- end of #bd_search -->
</div>	<!-- end of #homemain -->

</body>
</html>