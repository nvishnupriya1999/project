package com.wipro.hms.service;

import java.util.Scanner;

import com.wipro.hms.bean.RentalPropertyBean;
import com.wipro.hms.dao.RentalPropertyDAO;
import com.wipro.hms.util.*;
public class RentalPropertyService {
	public void validateCity(String city) throws IvalidCityException
	{ 
		if(!(city.equalsIgnoreCase("chennai")|| city.equalsIgnoreCase("bangalore")))
		{
			throw new IvalidCityException();
		}
	}
	public String addRentalProperty(RentalPropertyBean bean)
	{
		if(bean.getCity().equals(null) || bean.getLocation().equals(null))
		{
			return "Null values in input";
		}
		else if(bean.getCity().length()==0 || bean.getLocation().length()==0 || bean.getNoOfBedRooms()==0 || bean.getRentalAmount()==0)
		{
			return "Invalid input";
		}
		try
		{
			validateCity(bean.getCity());
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		RentalPropertyDAO rpd=new RentalPropertyDAO();
		if(rpd.createRentalProperty(bean)>0)
		{
			return "Success";
		}
		else
		{
			return "Failure";
		}
	}
	public static void main(String[] args) {
		RentalPropertyBean bean=new RentalPropertyBean();
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter City");
		bean.setCity(sc.next());
		System.out.println("Enter location");
		bean.setLocation(sc.next());
		System.out.println("Enter no of bed rooms");
		bean.setNoOfBedRooms(sc.nextInt());
		System.out.println("Enter rental amount");
		bean.setRentalAmount(sc.nextFloat());
		RentalPropertyService service= new RentalPropertyService();
		System.out.println(service.addRentalProperty(bean));

	}

}
