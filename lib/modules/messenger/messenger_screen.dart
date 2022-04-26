import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MessengerScreen extends StatelessWidget{
  const MessengerScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         elevation: 0.0,
         titleSpacing: 20.0,
         title: Row(
           children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/34492145?v=4"),
            ),
             SizedBox(
               width: 20.0,
             ),
             Text("chat",
               style:TextStyle(
                 color: Colors.black,
               ) ,),
           ],
         ),
         actions: [
           IconButton(
             icon: const CircleAvatar(
               radius: 15.0,
               backgroundColor: Colors.blue,
               child: Icon(
                 Icons.camera_alt,
                 size: 16.0,
                 color: Colors.white,
               ),
             ),
             onPressed: () {},
           ),
           IconButton(
             icon: const CircleAvatar(
               radius: 15.0,
               backgroundColor: Colors.blue,
               child: Icon(
                 Icons.edit,
                 size: 16.0,
                 color: Colors.white,
               ),
             ),
             onPressed: () {},
           ),
         ],
       ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xffca9937)
              ),
              child: Row(
                children: const [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("search")
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),

            Container(
              height: 110.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                  itemBuilder:  (context,index)=>buildStoryItem(),
                  separatorBuilder: (context,index)=>const SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 15),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder:  (context,index)=>buildChatItem(),
                separatorBuilder: (context,index)=>const SizedBox(
                 height: 20.0,
                ),
                itemCount: 15),

          ],

      ),
        ),
    )
    );
  }
     Widget buildChatItem() => Row(children:  [
                  Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
            CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/34492145?v=4"),
            ),
            Padding(
            padding: EdgeInsetsDirectional.only(
            end: 3.0,
            bottom:3.0
            ),
            child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 6.0,

            ),
            ),
            Padding(
            padding: EdgeInsetsDirectional.only(
            end: 3.0,
            bottom: 3.0

            ),
            child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 5.0,
            ),
            )
            ],
            ),
        const SizedBox(
        width: 20.0,
        ),
            Expanded(
            child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text("hassan abdelAllah",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(
            height: 5.0,
            ),
            Row(
            children:  [
            const Expanded(
            child: Text("hello my friend my names basti",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            ),
            ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0,),
            child: Container(
            width: 6.0,
            height: 6.0,
            decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
            ),
            ),

            ),
            const Text("01.00pm"),
            ],
            )
            ],
            ),
            )
            ],);
     Widget buildStoryItem() =>  SizedBox(
       width: 60.0,
       child: Column(
         children: [
           Stack(
             alignment: AlignmentDirectional.bottomEnd,
             children: const [
               CircleAvatar(
                 radius: 30.0,
                 backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/34492145?v=4"),
               ),
               Padding(
                 padding: EdgeInsetsDirectional.only(
                     end: 3.0,
                     bottom:3.0
                 ),
                 child: CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 6.0,

                 ),
               ),
               Padding(
                 padding: EdgeInsetsDirectional.only(
                     end: 3.0,
                     bottom: 3.0

                 ),
                 child: CircleAvatar(
                   backgroundColor: Colors.green,
                   radius: 5.0,
                 ),
               )
             ],
           ),
           const SizedBox(
             height: 5.0,
           ),
           const Text("hassan abdelAllah",
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
           )
         ],
       ),
     );
}
