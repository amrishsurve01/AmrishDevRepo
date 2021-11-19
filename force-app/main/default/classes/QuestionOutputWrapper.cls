public class QuestionOutputWrapper {

    @InvocableVariable(required=true)
    public String question;
    
    @InvocableVariable(required=true)
    public List<String> questionChoice;
}