import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myfirstproject/modules/counter/Cubit/cubit.dart';
import 'package:myfirstproject/modules/counter/Cubit/states.dart';
class Counter extends StatelessWidget{
  int i=0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit() ,
      child: BlocConsumer<CounterCubit,CounterStates>(
        builder: (BuildContext context, state) =>Scaffold(
          appBar: AppBar(
            title: Text("couter"),
            actions: [
              IconButton( icon:( const Icon(Icons.notification_important)),onPressed :(){
                print("hello");
              }),
            ],

          ),
          body: Container(
            child: Center(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    CounterCubit.get(context).minusCounter();
                  }, icon: const CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.remove),
                  )),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(CounterCubit.get(context).counter.toString(),
                    style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    ),),
                  const SizedBox(
                    width: 10.0,
                  ),
                  IconButton(onPressed: (){
                    CounterCubit.get(context).increaseCounter();
                  }, icon: const CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.add),
                  )),
                ],
              ),
            ),
          ),
        ),
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }




}