public class ChatBotController {
    
    public static void callMain() {
        OutputWrapper opObj = new OutputWrapper();
        Type t;
        String seq = '1';
        String name = 'Mahesh';
        String PIN = '5';
        Map<string,DynamicExecution__c> mapCodes = DynamicExecution__c.getAll();
        System.debug('$$$$$$Valur'+mapCodes.get(seq).Class_Name__c);
       	t = Type.forName(mapCodes.get(seq).Class_Name__c);
        
        HandlerInterface v = (HandlerInterface)t.newInstance();
        v.ProcessData(name,PIN,opObj);
        System.debug('########Values '+opObj);
    }
    
    
    
    
}