package kr.co.vo.Board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.co.vo.BoardVO;
import kr.co.vo.Criteria;

public class BoardServiceImpl {
	@Autowired
	private SqlSession sqlSession;
	public List<BoardVO> list(Criteria cri) throws Exception{
		BoardDAOImpl dao = new BoardDAOImpl();
		return dao.list(cri);
	}
	public int listCount()throws Exception{
		BoardDAOImpl dao = new BoardDAOImpl();
		return dao.listCount();
	}

}
