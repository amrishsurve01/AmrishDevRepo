public class ChatBotController1 implements HandlerInterface {

    
    public static void ProcessData(String name, String PIN, OutputWrapper opObj) {
        String seq = '1.1';
        System.debug('$$$Inside Method1'+name+'%%%%%%PIN'+PIN);
		OutputWrapper.sCaseStatus = 'Closed';
		OutputWrapper.sOrigin = 'Phone';
        OutputWrapper.sPriority = 'Medium';
        Type t;
        Map<string,DynamicExecution__c> mapCodes = DynamicExecution__c.getAll();
        t = Type.forName(mapCodes.get(seq).Class_Name__c);
        System.debug('@@@@@t'+t);
        HandlerInterface v = (HandlerInterface)t.newInstance();
        v.ProcessInnerData1(name,PIN,opObj,seq);
        v.ProcessInnerData2(name,PIN,opObj,seq);
        v.ProcessInnerData3(name,PIN,opObj,seq);
    }
    
    
    public static void ProcessInnerData1(String name, String PIN, OutputWrapper opObj, String seq) {
        if(seq == '1.1') {
            System.debug('$$$Inside Method1'+name+'%%%%%%PIN1'+PIN);
            OutputWrapper.sCaseStatus = 'Closed';
            OutputWrapper.sOrigin = 'Phone';
            OutputWrapper.sPriority = 'Medium';
        }
    }
    
    public static void ProcessInnerData2(String name, String PIN, OutputWrapper opObj, String seq) {
        if(seq == '1.2') {
            System.debug('$$$Inside Method2'+name+'%%%%%%PIN2'+PIN);
            OutputWrapper.sCaseStatus = 'Closed';
            OutputWrapper.sOrigin = 'Phone';
            OutputWrapper.sPriority = 'Medium';
        }
        
    }
    
    public static void ProcessInnerData3(String name, String PIN, OutputWrapper opObj, String seq) {
        if(seq == '1.3') {
            System.debug('$$$Inside Method3'+name+'%%%%%%PIN3'+PIN);
            OutputWrapper.sCaseStatus = 'Closed';
            OutputWrapper.sOrigin = 'Phone';
            OutputWrapper.sPriority = 'Medium';
        }
        
    }
    
}