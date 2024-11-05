import 'package:flutter/material.dart';

class ActiveUser extends StatelessWidget {
  const ActiveUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 33, 243, 117),
              radius: 40,
            ),
            Positioned(
                right: 0,
                bottom: 3,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.green,
                )),
          ],
        ),
        Text('User Name')
      ],
    );
  }
}
