public class BotFindPolicyData {
    
    @InvocableMethod(label='Bot Find My Policy')
    public static List<String> getIntentResponse(List<InputParams> inputs) {
        
        
        List<String> outLst = new List<String>();
        Integer count = 0;
        for(Bot_Intent_Details__c botIntentDetails : [SELECT Bot_Intent__r.Name,Name,Message__c	 FROM Bot_Intent_Details__c]) {
            //OutputParams outObj = new OutputParams();
            //outObj.outputSequence = '1';
            //outObj.message = botIntentDetails.Message__c;
            //outObj.numMessage = count + 1;
            outLst.add(botIntentDetails.Message__c);
            System.debug('^^^^^^outList'+outLst); 
        }
        return outLst;
    }
    
}