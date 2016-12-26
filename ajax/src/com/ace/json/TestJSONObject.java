package com.ace.json;

import org.json.JSONObject;

public class TestJSONObject
{
	public static void main(String[] args)
	{
		// JSON处理字符串代表的json对象
		String jsonContent = "{'hello': 'world', 'abc': 'xyz'}";
		JSONObject jsonObject = new JSONObject(jsonContent);

		String str1 = jsonObject.getString("hello");
		String str2 = jsonObject.getString("abc");

		System.out.println(str1);
		System.out.println(str2);
	}
}
