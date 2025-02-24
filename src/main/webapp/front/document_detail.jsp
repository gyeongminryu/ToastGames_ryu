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
    <link rel="stylesheet" type="text/css" href="resources/css/approval.css" />
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
                    <li class="tst_title_item tst_title_item_active" onclick="location.href='/document_list'">
                        <h1>문서함</h1>
                    </li>
                </ul>
                <!-- //제목 -->

                <div class="tst_flex">

                    <!-- 문서 상세보기 -->
                    <div class="tst_col9">
                        <table class="tst_table table_align_left">
                            <colgroup>
                                <col style="width: 120px" />
                                <col style="width: auto" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th colspan="2">
                                    문서
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>문서명</th>
                                <th>{문서명}</th>
                            </tr>
                            <tr>
                                <th>문서 유형</th>
                                <td>{문서 유형}</td>
                            </tr>
                            <tr>
                                <th>작성자</th>
                                <td><span onclick="tst_view_profile('{직원 번호}')" class="tst_pointer">{직원명} ({부서}/{직급})</span></td>
                            </tr>
                            <tr>
                                <th>최종 결재 일시</th>
                                <td>{yyyy-MM-dd HH:mm}</td>
                            </tr>
                            <tr>
                                <th>문서</th>
                                <td id="doc_content" class="doc_content">{문서}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- //문서 상세보기 -->

                    <!-- 문서 정보 확인 -->
                    <div class="tst_col3">

                        <!-- 결재 이력 -->
                        <table class="tst_table table_align_left">
                            <colgroup>
                                <col style="width: 40px" />
                                <col style="width: auto" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th colspan="2">
                                    결재 이력
                                </th>
                            </tr>
                            </thead>
                            <tbody>

                            <!-- 작성자 -->
                            <tr>
                                <td class="td_align_top td_no_padding">
                                    <img src="http://t1.daumcdn.net/brunch/service/user/hgs3/image/9JOYw3gnSsO-4srSbvW4LaGayQg.png" alt="{직원명}의 프로필 사진" class="approval_profile_image" />
                                </td>
                                <td class="approval_line_info">
                                    <h4 class="font_subtle approval_datetime_subtle">{상신일시}</h4>
                                    <h4>작성자</h4>
                                    <p><span onclick="tst_view_profile('{직원 번호}')" class="tst_pointer">{직원명} ({부서}/{직급})</span></p>
                                </td>
                            </tr>
                            <!-- //작성자 -->

                            <!-- 1차 결재자 -->
                            <tr>
                                <td class="td_align_top td_no_padding">
                                    <img src="http://t1.daumcdn.net/brunch/service/user/hgs3/image/9JOYw3gnSsO-4srSbvW4LaGayQg.png" alt="{직원명}의 프로필 사진" class="approval_profile_image" />
                                </td>
                                <td class="approval_line_info">
                                    <h4 class="font_subtle approval_datetime_subtle">{결재 일시}</h4>
                                    <h4>1차 결재자</h4>
                                    <p><span onclick="tst_view_profile('{직원 번호}')" class="tst_pointer">{직원명} ({부서}/{직급})</span></p>
                                </td>
                            </tr>
                            <!-- //1차 결재자 -->

                            <!-- 2차 결재자 -->
                            <tr>
                                <td class="td_align_top td_no_padding">
                                    <img src="http://t1.daumcdn.net/brunch/service/user/hgs3/image/9JOYw3gnSsO-4srSbvW4LaGayQg.png" alt="{직원명}의 프로필 사진" class="approval_profile_image" />
                                </td>
                                <td class="approval_line_info">
                                    <h4 class="font_subtle approval_datetime_subtle">{결재 일시}</h4>
                                    <h4>2차 결재자</h4>
                                    <p><span onclick="tst_view_profile('{직원 번호}')" class="tst_pointer">{직원명} ({부서}/{직급})</span></p>
                                </td>
                            </tr>
                            <!-- //2차 결재자 -->

                            <!-- 최종 결재자 -->
                            <tr>
                                <td class="td_align_top td_no_padding">
                                    <img src="http://t1.daumcdn.net/brunch/service/user/hgs3/image/9JOYw3gnSsO-4srSbvW4LaGayQg.png" alt="{직원명}의 프로필 사진" class="approval_profile_image" />
                                </td>
                                <td class="approval_line_info">
                                    <h4 class="font_subtle approval_datetime_subtle">{결재 일시}</h4>
                                    <h4>최종 결재자</h4>
                                    <p><span onclick="tst_view_profile('{직원 번호}')" class="tst_pointer">{직원명} ({부서}/{직급})</span></p>
                                </td>
                            </tr>
                            <!-- //최종 결재자 -->

                            </tbody>
                        </table>
                        <!-- //결재선 -->

                        <hr class="separator" />

                        <!-- 참조인 -->
                        <table class="tst_table table_align_left table_no_padding">
                            <colgroup>
                                <col style="width: 100px" />
                                <col style="width: auto" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th colspan="2">
                                    참조인
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>참조인 1</th>
                                <td><span onclick="tst_view_profile('{직원 번호}')" class="tst_pointer">{직원명} ({부서}/{직급})</span></td>
                            </tr>
                            <tr>
                                <th>참조인 2</th>
                                <td><span onclick="tst_view_profile('{직원 번호}')" class="tst_pointer">{직원명} ({부서}/{직급})</span></td>
                            </tr>
                            </tbody>
                        </table>
                        <!-- //참조인 -->

                        <hr class="separator" />

                        <!-- 첨부 파일 목록 -->
                        <table class="tst_table table_align_left table_no_padding">
                            <colgroup>
                                <col style="width: auto" />
                                <col style="width: 60px" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th colspan="2">첨부 파일</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>{파일명 (파일 용량kb)}</td>
                                <td>
                                    <!-- 다운로드 경로를 입력하세요 --><button type="button" onclick="location.href=''" class="btn_min btn_primary">다운로드</button>
                                </td>
                            </tr>
                            <tr>
                                <td>{파일명 (파일 용량kb)}</td>
                                <td>
                                    <!-- 다운로드 경로를 입력하세요 --><button type="button" onclick="location.href=''" class="btn_min btn_primary">다운로드</button>
                                </td>
                            </tr>

                            <!-- 첨부 파일이 없는 경우 아래와 같이 입력하세요 -->
                            <tr>
                                <td colspan="2" class="td_align_center">
                                    <span class="font_subtle">첨부 파일이 없습니다.</span>
                                </td>
                            </tr>
                            <!-- //첨부 파일이 없는 경우 아래와 같이 입력하세요 -->

                            </tbody>
                        </table>
                        <!-- //첨부 파일 목록 -->

                        <hr class="separator" />

                        <!-- 버튼 -->
                        <ul class="list_no_desc list_block">
                            <li>
                                <button class="btn_primary btn_full" onclick="location.href='/document_list'">목록으로 돌아가기</button>
                            </li>
                        </ul>
                        <!-- //버튼 -->

                    </div>
                    <!-- //문서 정보 확인 -->

                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="resources/js/common.js"></script>
</html>