import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String ownerName, ownerUrl;
  const ChatPage({required this.ownerName,required this.ownerUrl, super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Message> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add(Message(text: _controller.text, isSent: true));
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String ownerUrl = widget.ownerUrl ?? 'default_url';
    String ownerName = widget.ownerName ?? 'Unknown';

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back, color: Colors.black,)),
        title: Row(
          children: [
            Container(
            height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: NetworkImage(ownerUrl), fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 10,),
            Text(ownerName),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return Align(
                  alignment:
                  message.isSent ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: message.isSent ? Color.fromRGBO(140, 130, 223,1) : Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      message.text,
                      style: TextStyle(
                        color: message.isSent ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter your message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isSent;

  Message({required this.text, required this.isSent});
}