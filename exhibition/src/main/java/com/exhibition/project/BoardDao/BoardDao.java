package com.exhibition.project.BoardDao;

import java.util.ArrayList;

import com.exhibition.project.BoardDto.BoardDto;

public interface BoardDao {
	public ArrayList<BoardDto> list();
	public void write(String userid, String boardtopic, String board_comment);
	public BoardDto board_view(int board_num);
	public void Doboard_update(int board_num,String userid , String boardtopic ,String board_comment);
	public void Doboard_delete(int board_num);
	public void upHit(int board_num);
	public int loginCheck(String id, String passwd);
}
