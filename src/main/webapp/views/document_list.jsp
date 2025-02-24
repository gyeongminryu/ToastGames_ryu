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
                    <li class="tst_title_item tst_title_item_active" onclick="location.href='/document_list.go'">
                        <h1>문서함</h1>
                    </li>
                </ul>
                <!-- //제목 -->

                <div class="tst_flex">
                    <div class="tst_col2">

                        <table class="tst_table table_align_left">
                            <colgroup>
                                <col style="width: 20px;" />
                                <col style="width: auto;" />
                            </colgroup>
                            <tbody class="dept_list_high tst_pointer"></tbody>
                        </table>
                    </div>

                    <div class="tst_col10">

                        <div class="tst_flex">
                            <div class="tst_col8">

                                <!-- 문서 검색 -->
                                <form>
                                    <div class="tst_search_container">
                                        <div class="tst_search_select">
                                            <select id="tst_search_select_category" name="opt">
                                                <option value="doc_subject">문서명</option>
                                                <option value="doc_content">문서 내용</option>
                                                <option value="form_subject">문서 형식</option>
                                                <option value="writer">작성자</option>
                                                <option value="approval">결재자</option>
                                            </select>
                                        </div>
                                        <div class="tst_search_input">
                                            <input type="text" name="keyword" maxlength="50" placeholder="검색어를 입력하세요" />
                                        </div>
                                        <div class="tst_search_init font_subtle" onclick="location.href='/document_list.go'">
                                            <i class="bi bi-x-circle-fill"></i>
                                        </div>
                                        <div class="tst_search_icon">
                                            <button type="submit" class="btn_icon"><i class="bi bi-search"></i></button>
                                        </div>
                                    </div>
                                </form>
                                <!-- //문서 검색 -->

                            </div>
                            <div class="tst_col4">

                                <!-- 열람 가능한 문서 필터링 -->
                                <div class="tst_filtering_container tst_pointer">
                                    <div class="tst_filtering_off" onclick="accessible_filtering_on(this)">
                                        <i class="bi bi-toggle-off"></i>
                                        <span>열람 가능한 문서만 보기</span>
                                    </div>
                                    <div class="tst_filtering_on disp_hide" onclick="accessible_filtering_off(this)">
                                        <i class="bi bi-toggle-on"></i>
                                        <span>열람 가능한 문서만 보기</span>
                                    </div>
                                </div>
                                <!-- //열람 가능한 문서 필터링 -->

                            </div>
                        </div>
                        <table class="tst_table tr_hover_subtle table_no_padding">
                            <colgroup>
                                <col style="width: 60px;" />
                                <col style="width: 110px;" />
                                <col style="width: auto;" />
                                <col style="width: 150px;" />
                                <col style="width: 95px;" />
                                <col style="width: 150px;" />
                                <col style="width: 95px;" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th>번호</th>
                                <th>문서 형식</th>
                                <th>문서명</th>
                                <th>작성자</th>
                                <th>작성일</th>
                                <th>최종 승인자</th>
                                <th>최종 승인일</th>
                            </tr>
                            </thead>
                            <tbody class="doc_list"></tbody>

                            <!-- pagination -->
                            <tfoot>
                            <tr>
                                <td colspan="7">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination" id="pagination"></ul>
                                    </nav>
                                </td>
                            </tr>
                            </tfoot>
                            <!-- //pagination -->
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="resources/js/common.js"></script>
<script src="resources/js/document_list.js"></script>
</html>