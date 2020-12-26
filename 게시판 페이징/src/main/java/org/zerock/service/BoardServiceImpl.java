package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

public class BoardServiceImpl {
	private BoardMapper mapper; 
	
		public List<BoardVO> getList(Criteria cri){
			return mapper.getListWithPaging(cri);
		}
}
