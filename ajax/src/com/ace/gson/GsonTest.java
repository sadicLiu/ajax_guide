package com.ace.gson;

import com.google.gson.Gson;

public class GsonTest
{
	public static void main(String[] args)
	{
		Person p = new Person();
		p.setUsername("zhangsan");
		p.setPassword("123");
		p.setAddress("beijing");
		p.setAge(22);
		
		p.getList().add("hello");
		p.getList().add("world");
		p.getList().add("welcome");


		Gson gson = new Gson();

		// 将Java对象转换成json字符串
		String result = gson.toJson(p);

		// 将字符串转换成Java对象
		Person p1 = gson.fromJson(result, Person.class);
		
		System.out.println(result);
		System.out.println(p1.getUsername());
	}
}
