<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
	"http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.exhibition.project.HDao.HDao">
	<select id="list" resultType="com.exhibition.project.HDto.HDto">
		select member_num,id,passwd,name,gender,email,mobile,address
			from member 
	</select>
	 <insert id="signup">
		insert into member(member_num,id,passwd,name,gender,email,mobile,address)
		values(member_seq.nextval,#{param1},#{param2},#{param3},#{param4},#{param5},#{param6},#{param7})
	</insert>
	<select id="modify_view" resultType="com.exhibition.project.HDto.HDto">
		select member_num,id,passwd,name,gender,email,mobile,address
		from member where id=#{param1}
	</select> 
	<update id="modify">
	update member set id=#{param2},passwd=#{param3},name=#{param4},gender=#{param5},email=#{param6},mobile=#{param7},address=#{param8}
		where member_num=#{param1}
	</update>
	<select id="memberCheck" resultType="int">
		select count(*) from member where id=#{param1} and passwd=#{param2}
	</select>  
	<delete id="delete">
		delete from member where member_num=#{param1}
	</delete>
	
	
	
</mapper>