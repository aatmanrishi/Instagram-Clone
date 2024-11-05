import 'package:flutter/material.dart';
import '../Data/SearchImageData.dart';

class SearchGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,  // Number of columns
          childAspectRatio: 1,  // Makes each item square
        ),
        itemCount: searchImagesUrl.length,  // Total number of images
        itemBuilder: (context, index) {
          return Container(
              child: Image.network(
                searchImagesUrl[index],
                fit: BoxFit.cover,
              ),
          
          );
        },
      ),
    );
  }
}
