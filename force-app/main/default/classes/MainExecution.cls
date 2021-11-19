public class MainExecution {
    
    @InvocableMethod(label='Multiple Attributes')
    public static List<OutputParams> fetchMessages(List<InputParams> inputs) {
        InputParams input1 = inputs[0];
        List<OutputParams> outputMember = new List<OutputParams>();
        Type t;
        String Sequencenumber = input1.CurrentSequence; 
        Map<string,DynamicExecution__c> mapCodes = DynamicExecution__c.getAll();
        System.debug('$$$$$$Valur'+mapCodes.get(Sequencenumber).Class_Name__c);
       	t = Type.forName(mapCodes.get(Sequencenumber).Class_Name__c);
        
        HandlerInterface v = (HandlerInterface)t.newInstance();
        v.ProcessData(outputMember);
        return outputMember;
    }
    
}