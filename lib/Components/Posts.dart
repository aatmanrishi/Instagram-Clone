import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posts extends StatelessWidget {
  final String creatorName;
  final String songUsed;
  final String profileImageUrl;
  final String postImageUrl; // corrected from postsImageUrl
  final String postTitle;
  final String likedByUserName; // corrected from likeByUserName

  // Corrected constructor
  Posts({
    Key? key,
    required this.creatorName,
    required this.songUsed,
    required this.profileImageUrl,
    required this.postImageUrl, // corrected
    required this.postTitle,
    required this.likedByUserName, // corrected
  }) : super(key: key); // corrected initialization of the superclass

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(252, 252, 252, 252),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImageUrl), // use the passed image URL
              radius: 22,
            ),
            title: Text(creatorName,style:TextStyle(fontWeight: FontWeight.w400)), // display the creator's name
            subtitle: Text(songUsed,style: TextStyle(fontWeight: FontWeight.w100),), // display the song used
            trailing: Icon(Icons.more_vert),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.black,
            child: Image.network(
              postImageUrl, // use the passed post image URL
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.heart),
                        SizedBox(width: 3),
                        Text('200'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.comment),
                        SizedBox(width: 3),
                        Text('80'),
                      ],
                    ),
                  ],
                ),
                FaIcon(FontAwesomeIcons.bookmark),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Liked by '),
                    Text(likedByUserName), // use the passed likedByUserName
                    Text(' and others'),
                  ],
                ),
                Row(
                  children: [
                    Text(creatorName), // display the creator's name again
                    SizedBox(width: 3),
                    Text('23h'),
                    SizedBox(width: 3),
                    Text(postTitle), // use the passed post title
                  ],
                ),
                Text('View all comments'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
