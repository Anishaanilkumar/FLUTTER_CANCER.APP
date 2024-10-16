/*import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:project_app/widget/messages.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    super.initState();
    initializeDialogFlowtter();
  }

  Future<void> initializeDialogFlowtter() async {
    try {
      dialogFlowtter = await DialogFlowtter.fromFile();
      print('DialogFlowtter initialized');
    } catch (e) {
      print('Error initializing DialogFlowtter: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        'BOT_SAM',
        style: TextStyle(color: Color.fromRGBO(8, 8, 8, 0.965),fontWeight: FontWeight.bold),
      ),
      leading: Icon(Icons.person_4,color: Color.fromRGBO(8, 8, 8, 0.965) ,),
      backgroundColor: Color.fromRGBO(2, 105, 77, 0.965),
    ),
    body: Container(
      color: Color.fromARGB(255, 252, 252, 252), 
      child: Column(
        children: [
          Expanded(child: MessagesScreen(messages: messages)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            color: Color.fromARGB(255, 13, 13, 13),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Type your message',
                      hintStyle: TextStyle(color: Color.fromARGB(234, 198, 196, 196)),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    sendMessage(_controller.text);
                    _controller.clear();
                  },
                  icon: Icon(Icons.send),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
  void sendMessage(String text) async {
    if (text.isEmpty) {
      print('Message is empty');
      return;
    }

    print('Sending message: $text');

    setState(() {
      addMessage(Message(text: DialogText(text: [text])), true);
    });

    try {
      DetectIntentResponse response = await dialogFlowtter.detectIntent(
        queryInput: QueryInput(text: TextInput(text: text)),
      );

      if (response.message == null) {
        print('No response message from Dialogflow');
        return;
      }

      print('Received response: ${response.message!.text!.text?[0]}');

      setState(() {
        addMessage(response.message!);
      });
    } catch (e) {
      print('Error during detectIntent: $e');
    }
  }

  void addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({'message': message, 'isUserMessage': isUserMessage});
    setState(() {});
  }
}*/