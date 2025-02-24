<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TOAST Games Groupware</title>
    <link rel="stylesheet" type="text/css" href="resources/css/common.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/module_table.css" />
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
<c:import url="layout_topnav.jsp" />
<div class="tst_container">
    <c:import url="layout_leftnav.jsp" />
    <div class="tst_container_right">
        <div class="tst_contents">
            <div class="tst_contents_inner">

                <!-- 제목 -->
                <ul class="tst_title list_no_desc list_inline">
                    <li class="tst_title_item" onclick="location.href='/rent_list.go'">
                        <h1>공용 물품 대여</h1>
                    </li>
                    <li class="tst_title_item tst_title_item_active" onclick="location.href='/rent_mylist.go'">
                        <h1>내가 대여한 물품</h1>
                    </li>
                </ul>
                <!-- //제목 -->

                <div class="tst_flex">

                    <!-- 물품 정보 상세보기 -->
                    <div class="tst_col9">
                        <table class="tst_table table_align_left table_no_padding">
                            <colgroup>
                                <col style="width: 120px" />
                                <col style="width: auto" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th colspan="2">공용 물품 정보</th>
                            </tr>
                            </thead>
                            <tbody>

                            <!-- 연체했을 경우 --><!-- 연체하지 않았을 경우 class="disp_hide"를 추가해 주시기 바랍니다. -->
							<c:if test="${detail.prod_return_state == 3}">
							    <tr>
							        <th colspan="2" class="td_bg_caution td_align_center">반납 예정 기한이 지났습니다. 조속히 반납하시기 바랍니다.</th>
							    </tr>
							</c:if>
                            <!-- //연체했을 경우 -->
                            <tr>
                                <th>물품번호</th>
                                <th id="prod_idx">${detail.prod_idx}</th>
                            </tr>
                            <tr>
                                <th>물품명</th>
                                 <th id="prod_name">${detail.prod_name}</th>
                            </tr>
                            <tr>
                                <th>물품 정보</th>
                                <td id="prod_model">${detail.prod_model}</td>
                            </tr>
                            <tr>
                                <th>물품 설명</th>
                                <td id="prod_info">
                                	${detail.prod_info}
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- //물품 정보 상세보기 -->

                    <div class="tst_col3">

                        <!-- 첨부 파일 목록 -->
                        <table class="tst_table table_align_left table_no_padding">
                            <colgroup>
                                <col style="width: auto" />
                                <col style="width: 60px" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th colspan="2">설명서</th>
                            </tr>
                            </thead>
                            <tbody>
						        <c:forEach var="file" items="${files}">
						            <tr>
						                <td>
						                    ${file.ori_filename} (${file.file_size / 1024} KB)
						                </td>
						                <td>
						                    <button onclick="location.href='download.do?new_filename=${file.new_filename}&ori_filename=${file.ori_filename}'" 
						                            class="btn_min btn_primary">다운로드</button>
						                </td>
						            </tr>
						        </c:forEach>
                            </tbody>
                        </table>
                        <!-- //첨부 파일 목록 -->

                        <hr class="separator" />

                        <!-- 대여 정보 -->
                        <table class="tst_table table_align_left table_no_padding">
                            <colgroup>
                                <col style="width: 100px" />
                                <col style="width: auto" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th colspan="2">대여 정보</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>대여 번호</th>
                                <td id="prod_rent_idx">${detail.prod_rent_idx}</td>
                            </tr>
                            <tr>
                                <th>대여일</th>
                                <td>${map.formattedDates.prodRentDate}</td>
                            </tr>
                            <tr>
                                <th>대여 사유</th>
                                <td>${detail.prod_rent_reason}</td>
                            </tr>
                            <tr>
                                <th >대여 상태</th>
                                <td id="prod_rent_state" data-value="${detail.prod_return_state}">${detail.prod_return_state_str}</td>
                            </tr>
                            <tr>
                                <th>반납 예정일</th>
                                <td>${map.formattedDates.prodExpDate}</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="td_align_center td_bg_subtle">대여 장소는 ${detail.prod_place}입니다.</th>
                            </tr>
                            </tbody>
                        </table>
                        <!-- //대여 정보 -->

                        <hr class="separator" />

                        <!-- 버튼 -->
                        <ul class="list_no_desc list_block">
                            <li id="rentCancelButton"><!-- 대여 신청시가 아닐 때는 'class="disp_hide"'를 추가하여 보이지 않게 처리해 주세요 -->
                                <button class="btn_primary btn_full" onclick="tst_modal_call('tst_modal_cancel')">대여 신청 취소하기</button>
                            </li>
                            <li>
                                <button class="btn_secondary btn_full" onclick="location.href='/rent_mylist.go'">목록으로 돌아가기</button>
                            </li>
                        </ul>
                        <!-- //버튼 -->

                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
<c:import url="rent_mylist_detail_modal.jsp" />
</body>
<script src="resources/js/common.js"></script>
<script src="resources/js/rent_mylist_detail.js"></script>

</html>