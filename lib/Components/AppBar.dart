import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/Pages/Chats.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
       forceMaterialTransparency: false,
      title: Text(
        'Instagram',
        style: GoogleFonts.sansitaSwashed(
          fontSize: 28,
          fontWeight: FontWeight.w400
        ),
        
      ),

      actions: [
        FaIcon(FontAwesomeIcons.heart),
        SizedBox(width: 20),
        IconButton(onPressed: (){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Chats()),
            );
        }, icon: FaIcon(FontAwesomeIcons.message)),
        SizedBox(width: 20),
      ],
    );
  }
}