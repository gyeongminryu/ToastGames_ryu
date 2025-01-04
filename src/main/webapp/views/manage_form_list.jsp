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
    <link rel="stylesheet" type="text/css" href="resources/css/module_pagenation.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/module_search_min.css" />
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="resources/js/jquery.twbsPagination.js"></script>
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
                    <li class="tst_title_item tst_title_item_active" onclick="location.href='/manage_form_list'">
                        <h1>문서 양식 관리</h1>
                    </li>
                    <li class="tst_title_item" onclick="location.href='/manage_form_disuse_list'">
                        <h1>사용하지 않는 문서 양식 관리</h1>
                    </li>
                    <li class="tst_title_item" onclick="location.href='/manage_form_wip_list'">
                        <h1>작성중인 문서 양식</h1>
                    </li>
                </ul>
                <!-- //제목 -->

                <!-- 양식 이름 검색 -->
                <form>
                    <div class="tst_search_container">
                        <div class="tst_search_select">
                            <select name="">
                                <option value="{양식명}">양식명</option>
                                <option value="{양식 내용}">양식 내용</option>
                            </select>
                        </div>
                        <div class="tst_search_input">
                            <input type="text" name="" maxlength="50" placeholder="검색어를 입력하세요" />
                        </div>
                        <div class="tst_search_icon">
                            <button type="submit" class="btn_icon"><i class="bi bi-search"></i></button>
                        </div>
                    </div>
                </form>
                <!-- //양식 이름 검색 -->

                <div class="tst_flex">

                    <div class="tst_col8">
                        <table class="tst_table tr_hover_subtle">
                            <colgroup>
                                <col style="width: 60px;" />
                                <col style="width: auto;" />
                                <col style="width: 150px;" />
                                <col style="width: 150px;" />
                                <col style="width: 150px;" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th>번호</th>
                                <th>문서명</th>
                                <th>1차 결재자</th>
                                <th>2차 결재자</th>
                                <th>3차 결재자</th>
                            </tr>
                            </thead>
                            <tbody class="form_list">

                            <!-- 문서 양식 목록 -->

                            </tbody>

                            <!-- pagination -->
                            <tfoot>
                            <tr>
                                <td colspan="5">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination" id="pagination"></ul>
                                    </nav>
                                </td>
                            </tr>
                            </tfoot>
                            <!-- //pagination -->
                        </table>
                    </div>

                    <!-- 문서 양식 미리보기 -->
                    <div class="tst_col4">
                        <table class="tst_table table_no_padding">
                            <thead>
                            <tr>
                                <th>미리보기</th>
                            </tr>
                            </thead>

                            <!-- 선택한 문서 양식이 없을 경우 -->
                            <tbody>
                            <tr class="approval_received_no_data"><!-- 양식을 선택했을 경우 클래스 disp_hide를 추가하세요. -->
                                <td class="td_no_data">
                                    <p>
                                        <i class="bi bi-file-earmark-text"></i>
                                    </p>
                                    <h3>문서 양식 이름을 클릭하면</h3>
                                    <h3>기본형을 확인할 수 있습니다.</h3>
                                </td>
                            </tr>
                            </tbody>
                            <!-- //선택한 문서 양식이 없을 경우 -->

                            <!-- 문서 양식을 선택했을 경우 -->
                            <tbody>
                            <tr>
                                <td>{문서 양식 코드}</td>
                            </tr>
                            </tbody>
                            <tfoot>
                            <tr>
                                <td class="td_align_left">
                                    <button onclick="location.href='/manage_form_detail'" class="btn_secondary">문서 양식 수정하기</button>
                                </td>
                            </tr>
                            </tfoot>
                            <!-- //문서 양식을 선택했을 경우 -->

                        </table>
                    </div>
                    <!-- //문서 양식 미리보기 -->

                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="resources/js/common.js"></script>
<script src="resources/js/manage_form_list.js"></script>
</html>