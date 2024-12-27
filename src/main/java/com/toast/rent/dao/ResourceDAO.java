package com.toast.rent.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.toast.rent.dto.ResourceDTO;

@Mapper
public interface ResourceDAO {

	
	//List<ResourceDTO> resourceList();

	
	//카테고리 목록 가져오기
	List<ResourceDTO> resourceCate();
	
	//카테고리 검색
	Map<String, Object> categroySearch(String keyword);

	//총 페이지
	int allCount(int cnt);

	//물품 목록 가져오기
	List<ResourceDTO> resourceList(int limit, int offset);

	//카테고리별 페이지
	int filterListCount(int cnt, String category);

	//카테고리별 목록 가져오기
	List<ResourceDTO> resourceFilterList(String category,int limit, int offset);

	//카테고리 & 검색 총 페이지
	int allSearchCount(int cnt, String option, String keyword);
	
	//전체보기 카테고리 & 검색 목록 가져오기
	List<ResourceDTO> resourceSearchList(String option, String keyword,int limit, int offset);

	//카테고리 선택 & 검색 페이지
	int filterSearchCount(int cnt, String option, String keyword, String category);

	//카테고리 선택 & 검색 목록 가져오기
	List<ResourceDTO> filterSearchList(String option, String keyword, String category, int limit, int offset);
	
	//물품 상세보기
	ResourceDTO prodDetail(int prod_idx);
	


}
