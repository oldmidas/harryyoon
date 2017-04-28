<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(function() {
	$("#magnifier").mouseover(function() {
		$(this).addClass("mouse-pointer");
	});
	$("#magnifier").mouseout(function() {
		$(this).removeClass("mouse-pointer");
	});
	$("#magnifier").click(function() {
		$("#searchform").submit();
	})

	// 기본날짜 설정하기
	var d = new Date();
	var month = d.getMonth()+1;
	var date = d.getDate();
	if (d.getMonth()+1<10) {
		month = '0' + (d.getMonth()+1);
	}
	if (d.getDate()<10) {
		date = '0' + d.getDate();
	}
	if ($("#initfromdate").val()=='') {
		$("#searchform input:eq(0)").val(d.getFullYear()+'-'+month+'-01');	
	} else {
		$("#searchform input:eq(0)").val($("#initfromdate").val());	
	}
	if ($("#inittodate").val()=='') {
		$("#searchform input:eq(1)").val(d.getFullYear()+'-'+month+'-'+date);
	} else {
		$("#searchform input:eq(1)").val($("#inittodate").val());	
	}

})
</script>
		<form id="searchform" class="form-inline w3-light-grey" action="${link }" method="post">
			<div id="ex1">
				<label style="width:3%;"></label>
				<select name="display" style="width:5%;">
					<option value="10" ${searchform.display eq 10 ? 'selected=selected' : ''}>10</option>
					<option value="20" ${searchform.display eq 20 ? 'selected=selected' : ''}>20</option>
					<option value="50" ${searchform.display eq 50 ? 'selected=selected' : ''}>50</option>
				</select>
				<label style="width:2%;"></label>
				<label style="width:5%;">전체</label>
				<label style="width:3%;"></label>
				<label style="width:3%;">시작일</label>
				<input type="date" name="fromdate" style="width:20%;display:inline;">
				<label style="width:2%;"></label>
				<label style="width:3%;">종료일</label>
				<input type="date" name="todate" style="width:20%;display:inline;">
				<label style="width:3%;"></label>
				<select class="w3-select" name="opt" style="width:5%;">
					<option value="title">제    목</option>
					<option value="writer">글쓴이</option>
				</select>
				<input class="w3-input w3-border" type="text" name="keyword" placeholder="검색어" style="width:15%;display:inline;" value="${searchform.keyword }">
				<i id="magnifier" class="fa fa-search w3-xxlarge" style="width:5%;"></i>
			</div>
		</form>
		<input type="hidden" id="initfromdate" value="${searchform.stringfromdate }">
		<input type="hidden" id="inittodate" value="${searchform.stringtodate }">