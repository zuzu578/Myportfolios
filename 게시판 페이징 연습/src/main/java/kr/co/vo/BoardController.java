package kr.co.vo;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.vo.Board.BoardService;
import kr.co.vo.Board.BoardServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model, Criteria cri) throws Exception{
		BoardServiceImpl service = new BoardServiceImpl();
		logger.info("list1");
		
		logger.info("list2");
		model.addAttribute("list", service.list(cri));
		logger.info("list3");
		
		PageMaker pageMaker = new PageMaker();
		logger.info("list4");
		pageMaker.setCri(cri);
		logger.info("list5");
		pageMaker.setTotalCount(service.listCount());
		logger.info("list6");
		
		model.addAttribute("pageMaker", pageMaker);
		logger.info("list7");
		return "/list";
		
	}
	}
	

