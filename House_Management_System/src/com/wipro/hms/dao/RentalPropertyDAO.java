package com.wipro.hms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.wipro.hms.bean.RentalPropertyBean;
import com.wipro.hms.util.DBUtil;

public class RentalPropertyDAO 
{
	public String generatePropertyID(String city)
	{
		int propertyId=0;
		String str = null;
		try
		{
			Connection con=DBUtil.getDBConnection();
			Statement stmt=con.createStatement();
			String query="select max(propertyid) from rental_tbl";
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next())
			{
				propertyId=rs.getInt(1);
			}
			con.close();
			str= city.toUpperCase().substring(0, 3) + propertyId;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return str;
	}
	public int createRentalProperty(RentalPropertyBean bean)
	{
		int result=0;
		try
		{
			Connection con=DBUtil.getDBConnection();
			String property_Id= generatePropertyID(bean.getCity());
			String query = "insert into rental_tbl(PROPERTYID, RENTALAMOUNT, NOOFBEDROOMS, LOCATION, CITY) values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, property_Id);
			ps.setFloat(2,bean.getRentalAmount());
			ps.setInt(3, bean.getNoOfBedRooms());
			ps.setString(4, bean.getLocation());
			ps.setString(5, bean.getCity());
			result=ps.executeUpdate();
			con.close();
			if(result>0)
			{
				return result;
			}
			else
			{
				return -1;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
}
