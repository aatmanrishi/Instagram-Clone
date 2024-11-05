import 'package:flutter/material.dart';
import 'package:instagram_clone/Components/AppBar.dart';
import 'package:instagram_clone/Components/Posts.dart'; // Your Posts widget
import 'package:instagram_clone/Components/Stories.dart';
import '../Data/PostsData.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(),
          Container(
            height: 120,
            child: Stories(),
          ),
          ListView.separated(
            shrinkWrap: true, // Allow ListView to occupy only needed height
            physics: NeverScrollableScrollPhysics(), // Disable scrolling in ListView
            itemCount: postsData.length,
            separatorBuilder: (context, index) => SizedBox(height: 10), // Space between items
            itemBuilder: (context, index) {
              final post = postsData[index];
              return Posts(
                creatorName: post['name'],
                songUsed: post['songUsed'],
                profileImageUrl: post['profileUrl'] ?? '', // Provide default if null
                postImageUrl: post['postImageUrl'],
                postTitle: post['postTitle'] ?? '', // Provide default if null
                likedByUserName: post['likedByUserName'] ?? '', // Provide default if null
              );
            },
          ),
        ],
      ),
    );
  }
}
