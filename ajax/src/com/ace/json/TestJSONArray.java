package com.ace.json;

import org.json.JSONArray;
import org.json.JSONObject;

public class TestJSONArray
{
	public static void main(String[] args)
	{
		String jsonContent = "[{'int': 333, 'bool': false, 'object': {'a': 1, 'b': 'ab'}}, {'int': 555, 'bool': true, 'object': {'a': 3, 'b': 'ba'}}]";
		JSONArray jsonArray = new JSONArray(jsonContent);

		for ( int i = 0; i < jsonArray.length(); i++)
		{
			JSONObject jsonObject = jsonArray.getJSONObject(i);

			int intValue = jsonObject.getInt("int");
			boolean boolValue = jsonObject.getBoolean("bool");
			
			JSONObject object = jsonObject.getJSONObject("object");

			int objectIntValue = object.getInt("a");
			String objectStrValue = object.getString("b");

			System.out.println("intValue:" + intValue);
			System.out.println("boolValue:" + boolValue);
			System.out.println("objectIntValue:" + objectIntValue);
			System.out.println("objectStrValue:" + objectStrValue);
			System.out.println();
		}
	}
}
