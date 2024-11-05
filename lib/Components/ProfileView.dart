import 'package:flutter/material.dart';
import 'package:instagram_clone/Components/EssentialProfileViewButtons.dart';
import 'package:instagram_clone/Components/ProfileViewDetails.dart';

class Profileview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(10, 20, 15, 10),
      child: Column(
        children: [
          Profileviewdetails(),
          SizedBox(
            height: 20,
          ),
          // ESSENTIAL PROFILE BUTTONS
          EssentialProfileButtons()
        ],
      ),
    );
  }
}
