trigger helloWorldAccountTrigger on Account (before insert,before update) {
	HelloWorld.addHelloWorld(Trigger.new);	   
}