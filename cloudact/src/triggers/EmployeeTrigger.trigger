trigger EmployeeTrigger on Account (after update) {
employee e1=new employee();
employee e2=new employee();
        e1.show();
        e2.show();

}