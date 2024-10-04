import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geminiai/message.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _userInput = TextEditingController();
  static const apiKey = "AIzaSyCQAJGXHHuU3G7l7YLB1vgpOaY_nUe-ga8";
  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
  final List<Message> _messages = [];

  Future<void> sendMessage() async {
    final message = _userInput.text.trim();
    if (message.isEmpty) {
      debugPrint("Attempted to send an empty message.");
      return;
    }

    debugPrint("Sending message: $message");
    setState(() {
      _messages.add(Message(isUser: true, message: message, date: DateTime.now()));
      _userInput.clear(); 
    });

    final content = [Content.text(message)];
    try {
      final response = await model.generateContent(content);
      debugPrint("Response from AI: ${response.text}");
      setState(() {
        _messages.add(Message(isUser: false, message: response.text ?? "Error: No response", date: DateTime.now()));
      });
    } catch (e) {
      debugPrint("Error while fetching response: $e");
      setState(() {
        _messages.add(Message(isUser: false, message: "Error: $e", date: DateTime.now()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
        image: NetworkImage('https://images.unsplash.com/photo-1650954316166-c3361fefcc87?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D'),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              final message = _messages[index];
              debugPrint("Displaying message at index $index: ${message.message}");
              return Messages(
                isUser: message.isUser,
                message: message.message,
                date: DateFormat('HH:mm').format(message.date),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 15,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _userInput,
                  decoration: InputDecoration(
                    fillColor: Colors.black54,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    label: Text(
                      'Enter Your Message',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Spacer(),
              IconButton(
                padding: EdgeInsets.all(12),
                iconSize: 30,
                onPressed: () {
                  sendMessage();
                },
                icon: Icon(Icons.send, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);

  }
}