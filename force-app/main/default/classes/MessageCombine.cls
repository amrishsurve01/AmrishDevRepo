public class MessageCombine implements HandlerInterface {

    public static void ProcessData(List<OutputParams> outparams) {

        OutputParams opObj = new OutputParams();
        opObj.outputSequence = '1';
        opObj.message1 = 'What is your name';
        opObj.message2 = 'What is your email';
        opObj.message3 = 'What is your age';
        opObj.message4 = 'What is your Mobile number';
		opObj.message5 = 'What kind of help we can gave it right now';
        opObj.numMessage = 5;
        List<String> finalString = new List<String>{'Good', 'Bad', 'Swing'};
        opObj.messageList = new List<String>();
        opObj.messageList.addAll(finalString);
        outparams.add(opObj);
    }
}