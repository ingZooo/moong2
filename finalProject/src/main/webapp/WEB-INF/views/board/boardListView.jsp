<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자유 게시판</title>
    <style>
      @font-face {
            font-family: '양진체';
            src: url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff') format('woff');
            font-weight: normal;
            font-style: normal;
      }
      * {
        font-family: '양진체';
      }

      .wrap { /*전체 div*/
        margin:7% auto;
        min-height: calc(100vh - 53px);
        width: 70%;
      }

      h3 { /*제목*/
        text-align: center;
        margin-top: 100px;
      }

      .category_wrap { /*분류, 검색 div*/
        margin-top: 50px;
        margin-left: 0;
      } 

      #category { /*분류 select*/
        height: 30px;
        border-radius: 5px;
      }

      .search { /*검색*/
        border-radius: 5px;
      }
      .search::placeholder {
        font-size: 13px;
        color: rgba(0, 0, 0, 0.329);
      }

      .search_btn { /*검색 버튼*/
        width: 70px;
        height: 31px;
        background-color: rgba(0, 0, 0, 0);
        color: rgb(251, 176, 76);
        border: 2px solid rgb(251, 176, 76);
        border-radius: 5px;
        font-size: 13px;
        letter-spacing: 1px;
      }
      .search_btn:hover {
        color: rgb(248, 238, 225);
        background-color:rgb(251, 176, 76);
      }

      .table { /*게시판 테이블*/
        width: 60%;
        margin-top: 50px;
        margin-left: auto;
        margin-right: auto;
      }

      .write_btn { /*작성 버튼*/
        width: 100px;
        height: 40px;
        /*float: right; */
        margin-top: 2%;
        margin-left: 1000px;
        background-color: rgba(0, 0, 0, 0);
        color: rgb(251, 176, 76);
        border: 2px solid rgb(251, 176, 76);
        border-radius: 5px;
        font-size: 13px;
        letter-spacing: 1px;
      }
      .write_btn:hover {
        color: rgb(248, 238, 225);
        background-color:rgb(251, 176, 76);
      }

      #paging { /*페이징*/
        text-align: center;
        width: 100px;
      }
      
      .pagination a {
      	color:#999999;
      	font-size: 12px;
      	text-decoration:none;
      }
      
      #footer { /*푸터*/
          height: 53px;
      }
    </style>
</head>
<body>

	<jsp:include page="../common/header.jsp" />
	
  <div id="menubar"></div>
  <div class="wrap">
    <h3>자유 게시판</h3>
    <div class="category_wrap">
      <select name="category" id="category">
        <option value="">분류</option>
        <option value="자유">자유</option>
        <option value="스터디">스터디 모집</option>
        <option value="문제집">문제집 공유</option>
      </select>
      <input type="search" name="q" class="search" placeholder="검색어를 입력하세요">
      <input type="submit" value="검색" class="search_btn">
    </div>
      <table id="boardList" class="table">
          <thead>
            <tr>
              <th scope="col" style="width: 80px;">번호</th>
              <th scope="col" style="width: 80px;">분류</th>
              <th scope="col" style="width: 120px;">작성자</th>
              <th scope="col" style="width: 350px;">제목</th>
              <th scope="col" style="width: 70px;">조회수</th>
              <th scope="col" style="width: 150px;">작성일</th>
            </tr>
          </thead>
          <tbody> 
          	<c:forEach var="b" items="${list}">
            <tr>
              <th id="bno">${b.boardNo}</th>
              <td>${b.categoryNo}</td>
              <td>${b.userId}</td>
              <td>${b.title}</td>
              <td>${b.count}</td>
              <td>${b.enrollDate}</td>
            </tr>
            </c:forEach>
          </tbody>
      </table>
      
      <script>
      		$(function(){
      			$("#boardList>tbody>tr").click(function(){
      				location.href = 'detail.bo?bno=' + $(this).children("#bno").text();	
      			})	
      		})
      </script>
      
      
      
	<div id="pagingArea">
		<ul class="pagination">   
			<c:choose>
				<c:when test="${ pi.currentPage eq 1 }">
					<li class="page-item disabled"><a class="page-link" href="#"><</a></li>
				</c:when>                
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="list.bo?cpage=${pi.currentPage-1}"><</a></li>
				</c:otherwise>
			</c:choose>
			
			<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
				<li class="page-item"><a class="page-link" href="list.bo?cpage=${p }">${p}</a></li>
			</c:forEach>
			
			<c:choose>
				<c:when test="${pi.currentPage eq pi.maxPage }">
					<li class="page-item disabled"><a class="page-link" href="#">></a></li>
				</c:when>
				
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="list.bo?cpage=${pi.currentPage+1}">Next</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
      <div>
      <c:if test="${not empty loginUser }">
        <button class="write_btn" onclick="location.href='enrollForm.bo'">작성</button>
      </c:if>
      </div>
   </div>

  <div id="footer"></div>
</body>
</html>