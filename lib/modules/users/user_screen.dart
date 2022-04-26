
import 'package:flutter/material.dart';

import '../../models/userModel.dart';


class UsersScreen extends StatelessWidget{
 List<UserModel>users=[
   UserModel(id: 1, name: "ahmed", phone: "013456789"),
   UserModel(id: 2, name: "yacine", phone: "05487313546"),
   UserModel(id: 3, name: "abdo", phone: "065354897"),
   UserModel(id: 1, name: "ahmed", phone: "013456789"),
   UserModel(id: 2, name: "yacine", phone: "05487313546"),
   UserModel(id: 3, name: "abdo", phone: "065354897"),
   UserModel(id: 1, name: "ahmed", phone: "013456789"),
   UserModel(id: 2, name: "yacine", phone: "05487313546"),
   UserModel(id: 3, name: "abdo", phone: "065354897"),
   UserModel(id: 1, name: "ahmed", phone: "013456789"),
   UserModel(id: 2, name: "yacine", phone: "05487313546"),
   UserModel(id: 3, name: "abdo", phone: "065354897"),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("users"),
      ),
      body: ListView.separated(itemBuilder: (context, index) => BuildItemUser(users[index]),
          separatorBuilder: (context ,index)=>Container(
            height: 1.0,
            color: Colors.grey[300],
          ),
          itemCount: users.length),
    );
  }
Widget BuildItemUser(UserModel user) =>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
  children:  [
  CircleAvatar(
  backgroundColor: Colors.teal,
  radius: 25,
  child: Text(
  "${user.id}",
  style: const TextStyle(
  fontSize: 16.0
  ),
  ),
  ),
  const SizedBox(
  width: 15.0,
  ),
  Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start,
  children:  [
  Text(user.name,
  style:  const TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold
  ),
  ),
  Text(
  user.phone,
  style:  const TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.normal,
  color: Colors.grey,
  ),
  ),
  ],
  ),
  ],

  ),
  );
}