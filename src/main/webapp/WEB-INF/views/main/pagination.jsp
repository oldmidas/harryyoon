<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus {
  z-index: 3;
  color: #fff;
  cursor: default;
  background-color: black;
  border-color: black;
  text-decoration: 
}
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  z-index: 2;
  color: black;
  background-color: #eee;
  border-color: #ddd;
}
.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 6px 12px;
  margin-left: -1px;
  line-height: 1.42857143;
  color: black;
  text-decoration: none;
  background-color: #fff;
  border: 1px solid #ddd;
}
</style>
	<ul class="pagination">
	<c:if test="${pagination.currentBlock gt 1 }">
		<li>
			<a href="${link }?pageNo=${pagination.prevBlock }" id="navi-${pagination.prevBlock }" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
			</a>
		</li>
	</c:if>
	<c:if test="${pagination.totalPages ne 0 }">
		<c:forEach var="pno" begin="${pagination.beginPage }" end="${pagination.endPage }">
			<c:choose>
				<c:when test="${pno eq pagination.currentPage }">
					<li class="active">
						<a href="${link }?pageNo=${pno }" id="navi-${pno }">${pno }</a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a href="${link }?pageNo=${pno }" id="navi-${pno }">${pno }</a>
					</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</c:if>
	<c:if test="${pagination.totalPages eq 0 }">
		<h4>검색 결과가 없습니다. <i class="fa fa-search w3-large" style="width:5%;"></i></h4>
	</c:if>
		<c:if test="${pagination.currentBlock lt pagination.totalBlocks }">
		<li>
			<a href="${link }?pageNo=${pagination.nextBlock }" id="navi-${pagination.nextBlock }" aria-label="Next">
				<span aria-hidden="true">&raquo;</span>
			</a>
		</li>
		</c:if>
	</ul>