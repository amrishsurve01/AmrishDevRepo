public class QuestionRequestController implements HandlerQuestionInterface {

    public static void ProcessQuestionData(List<QuestionOutputWrapper> questionOutputWr) {
        List<String> formattedString = new List<String>{'Good','Bad','Confused'};
        
        QuestionOutputWrapper qoObj = new QuestionOutputWrapper();
		qoObj.question = 'How are you today?';
        qoObj.questionChoice = formattedString;
        questionOutputWr.add(qoObj);
    }
}