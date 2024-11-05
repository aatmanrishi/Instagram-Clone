import 'package:flutter/material.dart';
import 'package:instagram_clone/Components/ProfilePicture.dart';
import '../Data/StoriesUrl.dart';

class Stories extends StatelessWidget {
  final bool? hiddenIcon; // Fixed nullable type

  Stories({super.key, this.hiddenIcon}); // Fixed constructor

  @override
  Widget build(BuildContext context) {
    // Define the first profile picture URL
    final String firstProfilePictureUrl =
        "https://sportshub.cbsistatic.com/i/2022/05/09/a1a72d8c-d821-4f77-80fb-05ce4e8b5bfc/dragon-ball-goku.jpg?width=1200";

    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      margin: EdgeInsets.only(bottom: 10, top: 10),
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount:
            StoriesUrl.length + 1, // Add one for the first profile picture
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemBuilder: (context, index) {
          if (hiddenIcon == true && index == 0) {
            // Render the first profile picture
            return ProfilePicture(imageUrl: firstProfilePictureUrl);
          } else if (index == 0) {
            // Corrected syntax
            return ProfilePicture(
              imageUrl: firstProfilePictureUrl,
              icon_: Icon(Icons.add_circle_outlined, color: Colors.blue),
            );
          } else if (hiddenIcon == true) {
            // Render the other profile pictures from StoriesUrl
            return ProfilePicture(
              imageUrl: StoriesUrl[index - 1],
              icon_: Icon(Icons.circle,
                  color: Colors.green), // Adjust index for StoriesUrl
            );
          } else {
            return ProfilePicture(imageUrl: StoriesUrl[index - 1]);
          }
        },
      ),
    );
  }
}
