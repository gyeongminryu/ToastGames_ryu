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
    <link rel="stylesheet" type="text/css" href="resources/css/companyinfo.css" />
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
                    <li class="tst_title_item tst_title_item_active" onclick="location.href='/manage_employee_list'">
                        <h1>인사 관리</h1>
                    </li>
                    <li class="tst_title_item" onclick="location.href='/manage_employee_resign_list'">
                        <h1>퇴사자 관리</h1>
                    </li>
                    <li class="tst_title_item" onclick="location.href='/manage_employee_regist'">
                        <h1>직원 등록</h1>
                    </li>
                    <li class="tst_title_item" onclick="location.href='/manage_employee_regist_multiple'">
                        <h1>직원 일괄 등록</h1>
                    </li>
                </ul>
                <!-- //제목 -->

                <div class="tst_flex">
                    <div class="tst_col9">

                        <!-- 직원 정보 상세보기 -->
                        <table class="tst_table table_align_left">
                            <colgroup>
                                <col style="width: 15%" />
                                <col style="width: 35%" />
                                <col style="width: 15%" />
                                <col style="width: 35%" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th colspan="4">개인 정보</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th class="td_bg_subtle">이름</th>
                                <td>${employee.empl_name}</td>
                                <th class="td_bg_subtle">직원 번호</th>
                                <td>${employee.empl_idx}</td>
                            </tr>
                            <tr>
                                <th class="td_bg_subtle">성별</th>
                                <td>${employee.empl_gender ? '여성' : '남성'}</td>
                                <th class="td_bg_subtle">아이디</th>
                                <td>${employee.empl_id}</td>
                            </tr>
                            <tr>
                                <th class="td_bg_subtle">생년월일</th>
                                <td>${employee.empl_birth}</td>
                                <th class="td_bg_subtle">부서</th>
                                <td>${appoLast.dept_name} </td><!-- 부서장인 경우에는 팀을 기재하지 않습니다 -->
                            </tr>
                            <tr>
                                <th class="td_bg_subtle">주민등록번호</th>
                                <td>${employee.empl_ssn1}-${employee.empl_ssn2}</td>
                                <th class="td_bg_subtle">직급/직책</th>
                                <td>${appoLast.position_name}/${appoLast.duty_name}</td>
                            </tr>
                            <tr>
                                <th class="td_bg_subtle">급여 입금 계좌</th>
                                <td colspan="3">{은행명} {급여 입금 계좌} (예금주: {직원명})</td>
                            </tr>
                            <tr>
                                <th class="td_bg_subtle">입사일</th>
                                <td>${employee.empl_join_date}</td>
                                <th class="td_bg_subtle">퇴사일</th>
                                <td>${employee.empl_resig_date}</td>
                            </tr>
                            </tbody>
                        </table>
                        <hr class="separator" />

                        <table class="tst_table table_align_left">
                            <colgroup>
                                <col style="width: 15%" />
                                <col style="width: 35%" />
                                <col style="width: 15%" />
                                <col style="width: 35%" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th colspan="4">연락처</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th class="td_bg_subtle">회사 내 유선번호</th>
                                <td>${employee.empl_cmp_phone}</td>
                                <th class="td_bg_subtle">회사 내 이메일</th>
                                <td>${employee.empl_cmp_email}</td>
                            </tr>
                            <tr>
                                <th class="td_bg_subtle">개인 전화번호</th>
                                <td>${employee.empl_per_phone}</td>
                                <th class="td_bg_subtle">개인 이메일</th>
                                <td>${employee.empl_per_email}</td>
                            </tr>
                            <tr>
                                <th class="td_bg_subtle">주소</th>
                                <td colspan="3">${employee.empl_addr}</td>
                            </tr>
                            </tbody>
                        </table>
                        <hr class="separator" />

                        <table class="tst_table table_align_left">
                            <colgroup>
                                <col style="width: 15%" />
                                <col style="width: 35%" />
                                <col style="width: 15%" />
                                <col style="width: 35%" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th colspan="4">근태<!-- 및 연차 --></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th class="td_bg_subtle">이번 주 근무 시간</th>
                                <td>{이번 주 근무 시간}/52시간 <button onclick="location.href='/work_record?'" class="btn_min btn_primary">상세보기</button></td>
                                <th class="td_bg_subtle">초과 근무 여부</th>
                                <td>대상 아님|초과 근무중</td>
                            </tr>
                            <!-- <tr>
                                <th class="td_bg_subtle">잔여 연차</th>
                                <td>{잔여 연차}/15개</td>
                                <th class="td_bg_subtle">연차 초기화 일시</th>
                                <td>{내년}-01-01 00:00</td>
                            </tr> -->
                            </tbody>
                            <tfoot>
                            <tr>
                                <td colspan="4" class="td_align_left td_no_padding">
                                    <hr class="separator" />
                                    <button onclick="location.href='./manage_employee_update.go?empl_idx=${employee.empl_idx}'" class="btn_primary">정보 수정하기</button>
                                </td>
                            </tr>
                            </tfoot>
                        </table>
                        <hr class="separator" />
                        <hr class="separator" />
                        <hr class="separator" />
                        <!-- // 직원 정보 상세보기 -->

                        <!-- 제목 -->
                        <h1>인사 변경 이력</h1>
                        <hr class="separator" />
                        <!-- //제목 -->

                        <!-- 인사 이력 -->
                        <table class="tst_table">
                            <colgroup>
                                <col style="width: 60px;" />
                                <col style="width: auto;" />
                                <col style="width: 110px;" />
                                <col style="width: auto;" />
                                <col style="width: 120px;" />
                                <col style="width: 120px;" />
                            </colgroup>
                            <thead>
                            <tr>
                                <th>번호</th>
                                <th>부서/팀</th>
                                <th>직급/직책</th>
                                <th>직무</th>
                                <th>발령일</th>
                                <th>전출일</th>
                            </tr>
                            </thead>
                            <tbody>
                           <c:forEach var="appo" items="${appoList}" varStatus="status">
							<tr>
                                <td>${status.index + 1}</td>
                                <td>${appo.dept_name}</td><!-- 부서장일 경우 부서만 기재합니다 -->
                                <td>${appo.position_name}/${appo.duty_name}</td>
                                <td class="td_align_left">${appo.empl_job}</td>
                                <td>${appo.movein_date}</td>
                                <td>${appo.transfer_date}</td>
                            </tr>
							</c:forEach>
                            <!-- //예시 -->

                            </tbody>
                        </table>

                    </div>

                    <div class="tst_col3">

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
                            <c:forEach var="fileItem" items="${file}" varStatus="status">
								<tr>
                                <td>${fileItem.new_filename} (${fileItem.file_size/1024})</td>
                                <td>
                                    <!-- 다운로드 경로를 입력하세요 --><button onclick="downloadFile('${fileItem.new_filename}')" class="btn_min btn_primary">다운로드</button>
                                </td>
                            	</tr>
							</c:forEach>

                            </tbody>
                        </table>
                        <!-- //첨부 파일 목록 -->

                        <hr class="separator" />

                        <!-- 직인 > 파일이 있을 경우 -->
                        <table class="tst_table table_align_left table_no_padding">
                            <thead>
                            <tr>
                                <th>직인</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="td_no_underline">
                                <td>{파일 이름 (용량kb)}</td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="tst_flex">
                                        <div class="tst_col12 align_center align_middle">
                                            <img src="https://images3.theispot.com/1024x1024/a4140a1012.jpg?v=210305105300" class="companyinfo_stamp" />
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <!-- //직인 > 파일이 있을 경우 -->

                        <!-- 직인 > 파일이 없을 경우 -->
                        <table class="tst_table table_align_left table_no_padding">
                            <thead>
                            <tr>
                                <th>직인</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><p class="font_subtle align_center">직인이 없습니다.</p></td>
                            </tr>
                            </tbody>
                        </table>
                        <!-- //직인 > 파일이 없을 경우 -->

                    </div>

                </div>
            </div>
        </div>
    </div>
    
  <!-- 모달창 -->
<div id="appoModal" style="display: none; position: fixed; top: 20%; left: 30%; width: 40%; padding: 20px; background-color: #fff; border: 1px solid #000;">
    <h3>인사 발령</h3>
    
   <!-- 폼 영역 -->
    <form id="appoForm" action="employee_appo.do" method="POST">
        <div>
            <label for="department">부서:</label>
            <select id="department" name="dept_idx">
                <option value="">선택</option>
            </select>
        </div>
        <div>
            <label for="position">직급:</label>
            <select id="position" name="position_idx">
                <option value="">선택</option>
            </select>
        </div>
        <div>
            <label for="duty">직책:</label>
            <select id="duty" name="duty_idx">
                <option value="">선택</option>
            </select>
        </div>
        <div>
         	<label>직무</label>
            <input type="text" name="empl_duty" /> 직무
           
        </div>
         <div>
            <label for="effectiveDate">선택 날짜:</label>
            <input type="date" id="movein_date" name="movein_date">
        </div>
        <!-- 히든 필드 (선택값 동기화) -->
        <input type="hidden" id="empl_idx" name="empl_idx" value="${employee.empl_idx}">
       
       <!-- <input type="hidden" id="hiddenDuty" name="hiddenDuty"> 처리자 empl_idx 넣기 세션아이디로 --> 
        
        <div style="margin-top: 10px;">
            <button type="submit" id="submitAppo">확인</button>
            <button type="button" id="closeAppoModal">취소</button>
        </div>
    </form>
</div>  
    
    
</body>

<script src="resources/js/common.js"></script>
<script>
//다운로드 버튼 클릭 시 해당 파일 다운로드
function downloadFile(filename) {
    const url = './memberDownload/' + filename;  // 다운로드 URL 경로
    window.location.href = url;  // 해당 URL로 이동하여 다운로드
}
</script>



</html>