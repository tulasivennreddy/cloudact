@isTest
private class MyHelloworldTest {

    static testMethod void test_addHelloWorld()
    {
    	    //Create one object with default values
    		Account testAcct1 = new Account();
    		//Create another object and override description with foo
    		Account testAcct2 = new Account(Description ='Foo');
    		//Storing two objects into an Array
    		Account[] accts = new Account[] {testacct1,testacct2 };
        
        //Call Service implementation class
        HelloWorld.addHelloWorld(accts);
        //Validate after commit whether trigger got fired or not
        System.assertEquals('Hello World',accts[0].Description);
        System.assertEquals('Hello World',accts[1].Description);   
        
        System.assertEquals(Date.today(), accts[0].Curent_DateTime__c);  
    }
    static testmethod void test_helloWorldAccountTrigger()
    {
    	Account testAcct1 = new Account(Name='One',Phone='5105094490');
    	Account testAcct2 = new Account(Name='Two',Description = 'Foo');
    	Account[] accts = new Account[] { testAcct1, testAcct2};
    	insert accts;
    	
    	Account[] acctQuery = [SELECT  Description, Phone From Account Where ID = :accts[0].ID OR ID = :accts[1].ID];
    	System.assertEquals('Hello World',acctQuery[0].Description);
    	System.assertEquals('Hello World',acctQuery[1].Description);
    	
    		System.assertEquals('5105094490',acctQuery[0].Phone);
    }
    
    //Create another Service Method where you inject two properties 
    // One project assign Date value to it
    // Create unit test for the service method
    		//1- Verify the service method without inserting
    		//2- Verify the service method with inserting the values of Date is correct with the current date
    
}