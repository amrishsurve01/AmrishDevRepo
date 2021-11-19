public class VA_DynamicSMS {

    public class VA_QuestionInput {    
        @InvocableVariable(required=false)
        public String questionNumber;
        
    }
    
    public class VA_QuestionResponse {    
        @InvocableVariable(required=false)
        public List<String> answers;
        @InvocableVariable(required=false)
        public String questionNumber;
        @InvocableVariable(required=false)
        public Boolean isDone;
        @InvocableVariable(required=false)
        public String singleResult;
        @InvocableVariable(required=false)
        public String responseType;
    }

    @InvocableMethod(label='Dynamic SMS')
    public static List<VA_QuestionResponse> fetchData(List<VA_QuestionInput> sfInputs) {
        VA_QuestionInput inputObj = sfInputs[0];
        List<VA_QuestionResponse> outputMember = new List<VA_QuestionResponse>();
        
        Integer qNum = inputObj.questionNumber == null ? 1 : Integer.valueOf(inputObj.questionNumber);
        VA_QuestionResponse output = new VA_QuestionResponse();
        output.isDone = false;
        
        if(qNum == 1){            
            output.answers = new List<String>{'Policy 1','Policy 2'};
            output.questionNumber = '2';
            output.responseType = 'My Name is Amrish Right now time is :' + System.now();
            output.singleResult = 'This is what the support is';
        }
        
        outputMember.add(output);   
        return outputMember;
    }
    
}