package com.jsp.test;

import java.util.List;
import java.io.*;
import org.apache.ibatis.annotations.*;
import com.jsp.test.*;



@Mapper
public interface DBMap {
	
	@Insert("insert into Prod values (#{id}, #{name}")
	public void insertProd(@Param("id") int id, @Param("name") String name);
	
	@Select("select * from prod where id=#{id}")
	public ProdDTO selectProdById(@Param("id") int id);
	
	@Select("select * from prod")
	public List<ProdDTO> selctProd();
	
//	@SelectProvider(type =  com.java.test.Provider.class, method = "selectProdvider")
//	public ProdDTO getProd2(@Param("id") int id);
//	
//	@Insert("insert into prod values(#{id},#{name})")
//	public void insertProd(@Param("id") int id, @Param("name") String name);
//	
//	@Select("select * from prod")
//	@Results(id="prodList", value= {
//			@Result(property = "id", column = "id", id=true),
//			@Result(property = "name", column = "name"),
//
//	})
//
//	
//	public List<ProdDTO> getProdDTO();
	
	// 검색을 하다보면 정해진 검색이 아니라 매번 변화하는 검색읋 하는 경우도 마우 많아
	// 어노테이션에 특정위치에 내가 작성한 값이 들어가도록 변경하는 기능
	// @Param 어노테이션, #{}, ${}, 무조건 #{}
	// #{} prepared -> 자동으로 문자열화 -> '4' -> ?
	// ${} statement -> 붙이기 방식 -> a_${5} -> a_5
	// 계정 검색
	// select * from users where id = #{A} and pw = #{B}
	// select * from users where id = #'A' and pw = #'B'
	// select * from users where id = #{A} and pw = #{B}
	// select * from users where id = #{A} and pw = #{B}
	// 매개변수 앞에 @Param("이름") -> 내가 질의문에 #{이름}이라고 적으면 해당 위치에
	// 매개변수 가밧을 문자열로 변형해서 넣어줄거야
//	@Select("select * from prod where prod.id=#{prodid}")
//	public ProdDTO getProdById(@Param("id") int id);
//	
//	@Select("select * from movie")
//	@Results(id="MovieDTO", value= {
//			@Result(property = "id", column = "id", id=true),
//			@Result(property = "name", column = "name"),
//			@Result(property = "prod",column = "prodid", one=@One(select="getProdById"))
//
//	})
//	public List<MovieDTO> getMovies();
}
