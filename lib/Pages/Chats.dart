import 'package:flutter/material.dart';
import 'package:instagram_clone/Components/ChatSection.dart';
import 'package:instagram_clone/Components/SearchBar.dart';
import 'package:instagram_clone/Components/Stories.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                title: Text('Rishabh Shukla'),
                actions: [
                  IconButton(
                    onPressed: () {
                      // Your edit action here
                    },
                    icon: Icon(Icons.edit_note_sharp, size: 30),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.98,
                child: CustomSearchBar(),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Stories(hiddenIcon: true,),
              ),
              SizedBox(
                height: 20,
              ),
              // Container(
              //   margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
              //   child: Text(
              //     'Messages',
              //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              //   ),
              // ),
              ChatSection(), // The ChatSection is included
            ],
          ),
        ),
      ),
    );
  }
}
