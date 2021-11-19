public class EinsteinChatBotController {  
  
    public class CaseOutput {  
      	@InvocableVariable( required=true )  
        public String sStatus;  
        @InvocableVariable( required=true )  
        public String sOrigin;  
        @InvocableVariable( required=true )  
        public String sPriority;  
    }  
      
    public class CaseInput {  
      	@InvocableVariable( required=true )  
        public String sCaseNumber;  
          
    }  
  
    @InvocableMethod(label='Get Case Status')  
    public static List < CaseOutput > fetchCaseStatus( List < CaseInput > listCaseInputs ) {  
      	List < CaseOutput > objOutputs = new List < CaseOutput >();  
        CaseOutput objOutput = new CaseOutput();  
        Set < String > strCaseNumbers = new Set < String >();  
        for ( CaseInput objCaseInput : listCaseInputs )  {
            strCaseNumbers.add( objCaseInput.sCaseNumber );  
        }
        Case caseObj = [ SELECT Status,Priority,Origin FROM Case WHERE CaseNumber IN: strCaseNumbers LIMIT 1];
        objOutput.sStatus = caseObj.Status; 
        objOutput.sOrigin = caseObj.Origin;  
        objOutput.sPriority = caseObj.Priority;  
        objOutputs.add( objOutput );   
        return objOutputs;  
      
    }  
  
}