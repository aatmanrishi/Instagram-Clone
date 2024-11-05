import 'package:flutter/material.dart';
import 'package:instagram_clone/Components/SearchBar.dart';
import 'package:instagram_clone/Components/SearchGrid.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.9,
      child: Column(
        children: [
          CustomSearchBar(),
          SearchGrid(),
        ],
      ),
    );
  }
}