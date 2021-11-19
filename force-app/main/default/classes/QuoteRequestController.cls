public class QuoteRequestController implements HandlerInterface {

    public static void ProcessData(List<OutputParams> opObj) {
        List<OutputParams> outLst = new List<OutputParams>();
        Integer count = 0;
        for(Bot_Intent_Details__c botIntentDetails : [SELECT Bot_Intent__r.Name,Name,Message__c	 FROM Bot_Intent_Details__c]) {
            OutputParams outObj = new OutputParams();
            outObj.outputSequence = '1';
            outObj.message = botIntentDetails.Message__c;
            outObj.numMessage = count + 1;
            outLst.add(outObj);
            System.debug('^^^^^^outList'+outLst); 
        }
        opObj.addAll(outLst); 
        System.debug('^^^^^^opObj'+opObj);
	}
}