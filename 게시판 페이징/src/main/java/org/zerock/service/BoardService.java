package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardService {
	public void register(BoardVO board);
	public BoardVO get(Long board_num );
	public boolean modify(BoardVO board);
	public boolean remove(Long board_num);
	public List<BoardVO>getList(Criteria cri);
}
