public class QuestionExecutionChoices {
    
    @InvocableMethod(label='Dynamic Choices')
    public static List<String> fetchMessages(List<QuestionInputWrapper> inputs) {
        List<String> outputMember = new List<String>{'Good','Bad','Confused'};
        
        return outputMember;
    }
    
}