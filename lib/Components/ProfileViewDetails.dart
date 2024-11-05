import 'package:flutter/material.dart';
import 'package:instagram_clone/Components/ProfilePicture.dart';

class Profileviewdetails extends StatelessWidget {
  const Profileviewdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ProfilePicture(imageUrl: "https://th.bing.com/th/id/OIP.aOaXhQSoX-61K9oES55N7wHaEK?w=293&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",icon_: Icon(Icons.add_circle_outlined,color: Colors.blue,),),
        
            const Spacer(), // Add spacer for better spacing
            Column(
              children: [
                Text('2'),
                Text('posts'),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text('34'),
                Text('followers'),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text('1868'),
                Text('following'),
              ],
            ),
          ],
        ),
 
         Container(
          width: MediaQuery.of(context).size.width,
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Transform.translate(offset: Offset(5, 0),child: Text("I'm a Warrior"),),
                Transform.translate(offset: Offset(5, 0),child: Text("I'll be the strongest"),),
                Transform.translate(offset: Offset(5, 0),child: Text("Always up for training"),),
            ],
                   ),
         )
      ],
    );
  }
}
