import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 10),
          hintText: 'Search',
          hintStyle: TextStyle(color: Color.fromARGB(255, 105, 105, 105)), // Hint text color
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 15, top: 10), // Move the icon
            child: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 14,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 218, 218, 218), // Background color
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 1), // Thin border
          ),
        ),
      ),
    );
  }
}