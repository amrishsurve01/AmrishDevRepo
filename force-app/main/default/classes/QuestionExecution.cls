public class QuestionExecution {
    
    @InvocableMethod(label='Run Dynamic Questions')
    public static List<QuestionOutputWrapper> fetchMessages(List<QuestionInputWrapper> inputs) {
		List<QuestionOutputWrapper> outputMember = new List<QuestionOutputWrapper>();
        Type t;
        String Sequencenumber = inputs[0].CurrentSequence; 
        Map<string,DynamicExecution__c> mapCodes = DynamicExecution__c.getAll();
        System.debug('$$$$$$Valur'+mapCodes.get(Sequencenumber).Class_Name__c);
       	t = Type.forName(mapCodes.get(Sequencenumber).Class_Name__c);
        
        HandlerQuestionInterface v = (HandlerQuestionInterface)t.newInstance();
        v.ProcessQuestionData(outputMember);
        System.debug('&&&&&&&&&outputMember'+outputMember);
        return outputMember;
    }
    
    
}