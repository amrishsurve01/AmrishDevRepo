public class OutputParams {
    
    @InvocableVariable(required=true)
    public String outputSequence;
    
    @InvocableVariable(required=true)
    public String message1;
    
    @InvocableVariable(required=true)
    public String message2;
    
   	@InvocableVariable(required=true)
    public String message3;
    
    @InvocableVariable(required=true)
    public String message4;
    
    @InvocableVariable(required=true)
    public String message5;
    
    @InvocableVariable(required=true)
    public Integer numMessage;
    
    @InvocableVariable
    public List<String> messageList;

}