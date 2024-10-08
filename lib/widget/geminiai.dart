import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import 'package:intl/intl.dart';
import 'package:project_app/widget/message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _userInput = TextEditingController();
  ScrollController _scrollController = ScrollController(); // ScrollController
  static const apiKey = "AIzaSyCQAJGXHHuU3G7l7YLB1vgpOaY_nUe-ga8";
  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
  final List<Message> _messages = [];

  // Send message and handle AI response with a focus on cancer counseling
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

    // Scroll to the bottom after user message is added
    _scrollToBottom();

    // Modify the content to include a compassionate response instruction
    //final content = [Content.text(message)];
    final content = [
    Content.text(
      "Imagine you're a counselor providing support to a cancer patient. "
      "Respond in 20 words or less, ensuring your response is compassionate and supportive to the following message: \"$message\"."
    )
  ];

    try {
      final response = await model.generateContent(content);

      // Display AI's counseling-focused response
      debugPrint("Response from AI: ${response.text}");
      setState(() {
        _messages.add(Message(
          isUser: false,
          message: response.text ?? "Error: No response",
          date: DateTime.now(),
        ));
      });

      // Scroll to the bottom after AI response is added
      _scrollToBottom();
    } catch (e) {
      debugPrint("Error while fetching response: $e");
      setState(() {
        _messages.add(Message(
          isUser: false,
          message: "Error: $e",
          date: DateTime.now(),
        ));
      });

      // Scroll to the bottom after error message is added
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BOT_SAM',
          style: TextStyle(
            color: Color.fromRGBO(8, 8, 8, 0.965),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          Icons.person_4,
          color: Color.fromRGBO(8, 8, 8, 0.965),
        ),
        backgroundColor: Color.fromRGBO(2, 105, 77, 0.965),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController, // Attach ScrollController to ListView
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
                  flex: 25,
                  child: TextFormField(
                    style: TextStyle(
                      color: const Color.fromARGB(255, 11, 11, 11),
                      fontWeight: FontWeight.w600,
                    ),
                    controller: _userInput,
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 158, 204, 251),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Enter Your Message',
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 10, 10, 10),
                        fontWeight: FontWeight.w300,
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
                  icon: Icon(Icons.send, color: const Color.fromARGB(255, 9, 9, 9)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
