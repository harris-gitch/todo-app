import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);


 // const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        leading:const Icon(Icons.menu,
        ),
        title:  const Text("bingo",),
        actions:  [
          IconButton(icon:const Icon(Icons.notification_important),
           onPressed:  (onNotification)),
        IconButton(onPressed: onNotification, icon:const Icon(Icons.search)) ,
        ],
        backgroundColor: Colors.teal,
      ),
      body:Column(
        children: const [
          Image(image: NetworkImage("https://images.unsplash.com/photo-1647587085908-1b88c44bcdd0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            height: 200,
            width: 200,
            fit: BoxFit.cover,

          )
        ],
      ),
    );
  }


  void onNotification() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
