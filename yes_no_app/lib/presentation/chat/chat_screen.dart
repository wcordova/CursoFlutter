
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://shapes.inc/api/public/avatar/leviackerman-btvl',
            ),
          ),
        ),
        title: const Text('Chat Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Welcome to the Chat Screen!'),
      ),
    );
  }
}