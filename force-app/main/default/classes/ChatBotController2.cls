public class ChatBotController2 implements HandlerInterface {

    
    public static void ProcessData(String name, String PIN, OutputWrapper opObj) {
        System.debug('$$$Inside Method2'+name+'%%%%%%PIN'+PIN);
		OutputWrapper.sCaseStatus = 'New';
		OutputWrapper.sOrigin = 'Phone';
        OutputWrapper.sPriority = 'Low';
    }
}