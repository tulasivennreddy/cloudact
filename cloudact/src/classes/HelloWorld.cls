public class HelloWorld {
	// This method updates the Description field for a list
  // of accounts to read "Hello World".

public static void addHelloWorld(Account[] accs){
	//Requirement : When the object Account having description is different then inject Hello World
  for (Account a:accs){
      if (a.Description != 'Hello World')
            a.Description = 'Hello World';
            
        System.debug(a.Curent_DateTime__c);    
       if(a.Curent_DateTime__c == null)
           a.Curent_DateTime__c = Date.today();   
            
		}
		
}		



	
	
 }