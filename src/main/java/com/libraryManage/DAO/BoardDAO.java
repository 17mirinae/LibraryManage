package com.libraryManage.DAO;

import org.springframework.jdbc.core.*;
import org.springframework.stereotype.Component;

import java.util.*;

import javax.sql.*;

import com.libraryManage.DTO.*;

@Component
public class BoardDAO {
	private BoardDTO boardDTO;
	private JdbcTemplate jdbcTemplate;

	public BoardDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public BoardDTO selectByFBID(String inputFBID) {
		try {
			return jdbcTemplate.queryForObject("SELECT * FROM BOARD WHERE FBID=?;",
					(rs, rowNum) -> new BoardDTO(rs.getInt("FBID"), rs.getString("EMAIL"), rs.getString("TITLE"),
							rs.getString("CONTENT"), rs.getDate("DATE"), rs.getString("PUBLIC")),
					inputFBID);
		} catch (Exception ex) {
			return null;
		}
	}

	public List<BoardDTO> showAll() {
		List<BoardDTO> result = jdbcTemplate.query("SELECT * FROM BOARD;", (rs, rowNum) -> {
			BoardDTO boardDTO = new BoardDTO(rs.getInt("FBID"), rs.getString("EMAIL"), rs.getString("TITLE"),
					rs.getString("CONTENT"), rs.getDate("DATE"), rs.getString("PUBLIC"));
			return boardDTO;
		});
		return result;
	}

	public void updatePublic(BoardDTO boardDTO, String newPublic) {
		jdbcTemplate.update("UPDATE BOARD SET PUBLIC='" + newPublic + "' WHERE FBID=" + boardDTO.getBoardID() + ";");
	}
}
