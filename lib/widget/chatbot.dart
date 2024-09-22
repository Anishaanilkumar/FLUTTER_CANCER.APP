/*import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:nurse_bot/messages.dart';

/*class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}*/

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
        title: Text('NURSE _ ALLY'),
      ),
      body: Container(
        decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/image/background.jpg'), // Update to your specific image path
    fit: BoxFit.cover, // Adjust the fit as needed
  ),
),

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
                  )
                ],
              ),
            )
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
} */