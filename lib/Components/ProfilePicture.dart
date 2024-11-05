import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String imageUrl;
  final Icon? icon_;

  ProfilePicture({super.key, required this.imageUrl, this.icon_});

  @override
  Widget build(BuildContext context) {
    // Check if icon_ is null
    if (icon_ == null) {
      return Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 40,
          ),
          Text('User Name'), // Consider passing a user name as a parameter as well
        ],
      );
    }

    // If icon_ is provided, return the Stack
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 40,
            ),
            Positioned(
              right: 0,
              bottom: 3,
              child: CircleAvatar(
                radius: 12,
                child: Center(
                  child: icon_, // Use the provided icon
                ),
              ),
            ),
          ],
        ),
        Text('User Name'), // Consider passing a user name as a parameter as well
      ],
    );
  }
}
