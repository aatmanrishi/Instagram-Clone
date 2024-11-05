import 'package:flutter/material.dart';
import 'package:instagram_clone/Components/ActiveUser.dart';

class ActiveUsersSection extends StatelessWidget {
  const ActiveUsersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ActiveUser(),
            ],
          ) )
      ],
    );
  }
}