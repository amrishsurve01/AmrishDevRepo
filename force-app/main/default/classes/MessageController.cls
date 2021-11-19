public class MessageController implements HandlerMessageInterface {

    public static void ProcessData(List<String> opObj) {
        opObj.add('How are you working today');
        opObj.add('How can i help you today');
    }
}