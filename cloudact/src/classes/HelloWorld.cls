public class HelloWorld {
	// This method updates the Description field for a list
  // of accounts to read "Hello World".

public static void addHelloWorld(Account[] accs){
  for (Account a:accs){
      if (a.Description != 'Hello World')
            a.Description = 'Hello World';
       }
    }
    
   //static Integer count=0;
   
 //  public static void addUser(User[] a){
   //	for(User user: a){
   		//user.EmployeeNumber= "TR"+count++;
   		//user.ForecastEnabled=true;
   	//}
  // }	
    
    public static void addPhone(User[] p){
    for (User pho : p){
    	if(pho.phone == null)
    	pho.phone='0000000000'; 
    }
    }
    
}