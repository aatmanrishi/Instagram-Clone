import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatTile extends StatelessWidget {
  final String userName;
  final String subTitle;
  final String imageUrl;

  const ChatTile({
    super.key,
    required this.userName,
    required this.subTitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(10, 0, 20, 0),
      tileColor: Colors.transparent,
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.red,
        child: ClipOval(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: 60,
            height: 60,
            errorBuilder: (context, error, stackTrace) {
              print("Failed to load image from URL: $imageUrl");
              return Image.network(
                "https://th.bing.com/th/id/OIP.Qt44KJlRXZtOAL4z69NCewHaHZ?rs=1&pid=ImgDetMain",
                fit: BoxFit.cover,
                width: 60,
                height: 60,
              );
            },
          ),
        ),
      ),
      title: Text(userName,style: TextStyle(fontWeight: FontWeight.w600),),
      subtitle: Text(subTitle),
      trailing: FaIcon(FontAwesomeIcons.camera),
    );
  }
}
