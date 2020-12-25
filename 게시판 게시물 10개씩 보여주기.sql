 userid,
        boardtopic,
        rdate,
        nclick,
        board_comment
        from(select board_num,
        userid,
        boardtopic,
        rdate,
        nclick,
        board_comment,
        row_number()over(order by board_num desc) as rnum 
        from board
            )
            where rnum between 1 and 10 
            order by board_num desc;