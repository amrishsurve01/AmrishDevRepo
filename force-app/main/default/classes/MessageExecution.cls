public class MessageExecution {

    @InvocableMethod(label='Run Dynamic Messages')
    public static List<String> fetchMessages(List<InputParams> inputs) {
        InputParams input1 = inputs[0];
		List<String> outputMember = new List<String>();
        Type t;
        String Sequencenumber = input1.CurrentSequence; 
        Map<string,DynamicExecution__c> mapCodes = DynamicExecution__c.getAll();
        System.debug('$$$$$$Valur'+mapCodes.get(Sequencenumber).Class_Name__c);
       	t = Type.forName(mapCodes.get(Sequencenumber).Class_Name__c);
        
        HandlerMessageInterface v = (HandlerMessageInterface)t.newInstance();
        v.ProcessData(outputMember);
        return outputMember;
    }
}