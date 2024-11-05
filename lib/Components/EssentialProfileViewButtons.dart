import 'package:flutter/material.dart';

class EssentialProfileButtons extends StatelessWidget {
  const EssentialProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // EDIT PROFILE BUTTON
        SizedBox(
          width: screenWidth * 0.40, // 38% of screen width
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                side: BorderSide(
                  width: 2,
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Edit Profile',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),

        // SHARE PROFILE BUTTON
        SizedBox(
          width: screenWidth * 0.40, // 38% of screen width
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                side: BorderSide(
                  width: 2,
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Share Profile',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),

        // Discover People Button
        Container(
          width: 35,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black87,width: 2),
            
          ),
          padding: EdgeInsets.fromLTRB(0.2, 2.5, 0, 2.5),
          child: Icon(
            Icons.person_add_alt_outlined,
            size: 21,
          ),
        ),
      ],
    );
  }
}
