package com.study.model;

import java.util.List;
import java.util.Map;

public interface BbsMapper {

	int create(BbsDTO dto);

	int total(Map map);

	List<BbsDTO> list(Map map);

	void upViewcnt(int bbsno);

	BbsDTO read(int bbsno);

}
