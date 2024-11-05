import 'package:flutter/material.dart';
import 'package:instagram_clone/Components/ChatTile.dart';
import '../Data/MessagesData.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(), // Disable scrolling for this ListView
      shrinkWrap: true, // Allow ListView to take up only the space it needs
      itemCount: messagesData.length,
      itemBuilder: (context, index) {
        final msgData = messagesData[index]; // Get the current message data
        return ChatTile(
          userName: msgData['userName']!,
          subTitle: msgData['subTitle']!,
          imageUrl: msgData['imageUrl']!,
        );
      },
    );
  }
}
