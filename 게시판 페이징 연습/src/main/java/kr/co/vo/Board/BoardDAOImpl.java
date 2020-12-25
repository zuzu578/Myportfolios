package kr.co.vo.Board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vo.BoardVO;
import kr.co.vo.Criteria;

@Repository("BoardDAOImpl")
public class BoardDAOImpl {
	
	  @Autowired
	  private SqlSession sqlSession;
	  
	  public void setSqlSession(SqlSession sqlSession) {
	    this.sqlSession = sqlSession;
	  }
	public List<BoardVO> list(Criteria cri) throws Exception{
		return sqlSession.selectList("boardMapper.listPage",cri);
	}
	public int listCount() throws Exception{
		return sqlSession.selectOne("boardMapper.listCount");
	}

}
