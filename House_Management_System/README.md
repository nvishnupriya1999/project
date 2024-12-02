<b>House Management System</b>

<b>Project Assessment</b>
<b>GENERAL INSTRUCTIONS:</b> Please carefully read the below instructions
The objective of this assessment is to check your ability to complete a project as per the provided “Project Design”.
<b>You are expected to –</b>
1.  Write the source code for the classes, methods and packages <b>EXACTLY</b> as mentioned in the <b>“Project Design”</b> section.
2.  Ensure that the names of the packages, classes, methods and variables <b>EXACTLY MATCH</b> with the names specified in the “Project Design” section.
3.  Understand the project requirements and ACCORDINGLY WRITE the code and logic in the classes and methods so as to meet all given requirements.

 
<b>House Management System</b>
<b>Project Objective:</b>
Create a console based Java application that would allow a user of a House Management System to perform the following operations
• Create a new Rental Property into the system [Posting availability of a new property that is available for rent]
• The user will receive the following details from the customer
• The rental amount
• The number of bedrooms
• City name
• Location name
• The property id needs to be computed
 
<b>Project Design:</b>
<b>A. Database Design:</b>
      Create Table [ To be done using sql commands, after logging-in as the new user that has been created in above step ]
 
Table Name: RENTAL_TBL
|      Column   |	    Datatype	    |      Description             |
|---------------|------------------|------------------------------|
|   PROPERTYID	 |   VARCHAR2(20)	  |  PRIMARY KEY (auto generated)|
|  RENTALAMOUNT	|   NUMBER(10, 2)	 |  NOT NULL                    |
|  NOOFBEDROOMS	|   NUMBER(2)	     |  NOT NULL                    |
|  LOCATION	    |   VARCHAR2(20)	  |  NOT NULL                    |
|  CITY	        |   VARCHAR2(20)	  |  NOT NULL                    |
 
Sequence Name: RENTAL_SEQ
| Sequence Name	 | Minimum Value |	Max Values	|  Incremental value	|  Start Value  |
|----------------|---------------|------------|--------------------|---------------|
|  Rental_seq	   |     1000	     |     9999	  |           1	       |     1000      |
 
<b>B. System Design: </b>           
|    Name of the package	           |                         Usage                                                                  |
|-----------------------------------|------------------------------------------------------------------------------------------------|
|   com.wipro.hms.service           |	This package will contain the class that displays the console menu and takes the user input.   |
|   com.wipro.hms.bean	             |  This package will contain the bean class                                                      |
|   com.wipro.hms.dao	              |  This package will contain the class that will do the database related operations              |
|   com.wipro.hms.util	             |  This package will contain a class to establish database connection and also another class that handles the user defined exception.|
 
Package: com.wipro.hms.util
| Class	               |   Method and Variables	                     |  Description                                                                        |
|----------------------|---------------------------------------------|-------------------------------------------------------------------------------------|
| DBUtil	              | 	                                           | DB connection class                                                                 |  
|                      | 	public static Connection getDBConnection() |	Establish a connection to the database and return the java.sql.Connection reference |
| InvalidCityException |	                                            | 	User defined Exception class                                                       |
|	                     |public String toString()                     |	Returns “INVALID CITY”                                                              |
 
Package: com.wipro.hms.bean
|    Class	          |   Method and Variables	      |  Description   |
|--------------------|------------------------------|----------------|
| RentalPropertyBean |	                             |    	Class      |
|                    |	private float rentalAmount;	 |                |
| 	                  | private int noOfBedRooms;	   |                |
|                   	| private String location;	    |                |
|                   	| private String city;         |                |    	 
|                   	| private String propertyId;   |                |	 
 
Package: com.wipro.hms.dao
|   Class  	        |  Method and Variables	   |  Description  |
|-------------------|--------------------------|---------------|
| RentalPropertyDAO | 	                        | 	DAO class    |
| 	                 | public String generatePropertyID(String city) |This method should return the propertyId which is auto generated using sequence.<b> Format: </b> First 3 letters of the city in uppercase followed by the 4 digit auto generated number.E.g. CHE1000 – if the city name is Chennai |
|   | public int createRentalProperty(RentalPropertyBean bean) |<ul><li> This method should invoke the generatePropertyIDmethod of this class, receive the id and initialize the bean with the id value.</li><li> It should then insert the bean’s properties into the rental_tbl and should return the count of the records inserted</li><li>If there is some Exception(could be SQLException or any other Exception), the function should return -1.</li></ul> |
 
Package: com.wipro.hms.service
|           Class       | 	Method and Variables                                           | 	Description |
|-----------------------|-----------------------------------------------------------------|--------------|
| RentalPropertyService |	 	                                                              |  Main class  |
|  	                    | public static void main(String[] args)                          |	The code that is needed to test your program goes here. A sample code is shown at the end of the document. |
| 	                     | public String addRentalProperty(RentalPropertyBean bean) | <ul><li>It returns “NULL VALUES IN INPUT” if city or location is null</li><li>It returns <b>“INVALID INPUT”</b> under the following conditions<ul><li>Length of city or location is 0</li><li> No of bedrooms/Rental amount is 0</li></ul></li><li>This method will call validateCity method for validating city. If city is not either Chennai or Bengaluru (not case sensitive) the method should return <b>“INVALID CITY”</b> In all other conditions this method should call createRentalProperty method of DAO and returns <b>“SUCCESS”</b> if record is inserted else returns “FAILURE” if the record cannot be inserted |
|  	                    | public void validateCity(String city) throws InvalidCityException | <ul><li> This method will throw InvalidCityException if the provided city name is not either chennai or bengaluru (case insensitive)</li></ul>
 
 
 
 
 
<b>Main Method:</b>

You can write code in the main method and test all the above test cases. A sample code of the main method to test a test case is shown below for your reference.


```java
public static void main(String[] args) {
    RentalPropertyBean bean = new RentalPropertyBean();
    bean.setCity("Chennai");
    bean.setLocation("Velachery");
    bean.setNoOfBedRooms(2);
    bean.setRentalAmount(15000);
    RentalPropertyService service = new RentalPropertyService();
    System.out.println(service.addRentalProperty(bean));
}

