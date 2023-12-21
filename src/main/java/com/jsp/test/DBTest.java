package com.jsp.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

@WebServlet(urlPatterns= {
		"/test"
})

public class DBTest extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try(InputStream in = req.getServletContext().getResourceAsStream("/WEB-INF/config/mybatis-config.xml");
) {
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			SqlSessionFactory factory = builder.build(in);
			factory.getConfiguration().addMapper(DBMap.class);
			SqlSession session = factory.openSession();
			// AutoCommit
			
			// session.commit();
			// session.rollback
			
			// interface.Mapping
			DBMap map = session.getMapper(DBMap.class);
			
			map.insertProd(5, "남주혁");
			
			
			List<ProdDTO> prods = map.selctProd();
			
			for(ProdDTO dto:prods) {
				System.out.println(dto.getId());
				System.out.println(dto.getName());
			}
			
			session.close();
//			List<MovieDTO> movies = map.getMovies();
//			
//			for(MovieDTO dto:movies) {
//				System.out.println(dto.getName());
//				System.out.println(dto.getProd_ID());
//			}
			
			
					} catch (Exception e) {
			System.out.println("DB Config 파일을 못찾았어");
		}
	}
}
