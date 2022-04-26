import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget{
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
    int i=0;
 @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("couter"),
       actions: [
         IconButton( icon:( const Icon(Icons.notification_important)),onPressed :(){
           print("hello");
         }),
       ],

      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/INFAA4.svg",
            )
          ),
        ),
        child: Center(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             IconButton(onPressed: (){
               setState(() {
                 i--;
                 print(i);
               });

             }, icon: const CircleAvatar(
               radius: 15.0,
               backgroundColor: Colors.blue,
               child: Icon(Icons.remove),
             )),
              const SizedBox(
                width: 10.0,
              ),
              Text("$i",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(
                width: 10.0,
              ),
              IconButton(onPressed: (){
                setState(() {
                  i++;
                  print(i);
                });
              }, icon: const CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(Icons.add),
              )),
            ],
          ),
        ),
      ),
    );
  }
}