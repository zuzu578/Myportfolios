package kr.co.vo.Board;

import java.util.List;

import kr.co.vo.BoardVO;
import kr.co.vo.Criteria;

public interface BoardService {

	//게시물 목록 조회
	public List<BoardVO> list(Criteria cri)throws Exception;
	//게시물 총갯수
	public int listCount()throws Exception;
}
