

import 'dart:math';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstproject/shared/cubit/cubit.dart';

Widget defaultButton({double width=double.infinity, Color color=Colors.blue, bool isUpperCase =true, required Function function, required String text,
})=> Container(
  width: width,
  color: color,
      child: MaterialButton(
        onPressed: () {
          function;
        },
        child: Text(
          isUpperCase ? text.toUpperCase() :text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
);
Widget defaultFormField({
      required TextEditingController controller,
      required TextInputType type,
      Function? onSubmit,
      Function? onChange,
      Function? onTap,
      bool isPassword=false,
      required Function validate,
      required String label,
      required IconData prefixe,
      IconData? suffix,
      Function? suffixPressed,
      bool clickable=true,
    })=>  TextFormField(
  autovalidateMode: AutovalidateMode.onUserInteraction,
    controller: controller,
    keyboardType: type,

  obscureText: isPassword,
        onFieldSubmitted: (s) {
          onSubmit;
        },
        onChanged: ( value) {
          onChange;
        },
      validator:(s){
       return validate();
      },
    decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(
    prefixe
    ),
      suffixIcon:suffix != null ? IconButton(
        onPressed:(){
          suffixPressed;
        },
         icon:   Icon(
             suffix
         ),
        )
      :null,
      border: OutlineInputBorder(),
),
);

Widget BuildItemTask (Map model,context)=> Dismissible(
  key:  Key(model['id'].toString()),
  child:   Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        // Container(
        //   width: 80,
        //   height: 80,
        //   decoration: BoxDecoration(
        //       color: color[Random().nextInt(color.length)],
        //       borderRadius: BorderRadius.circular(10)
        //   ),
        //
        //   child: Text(model['time']),
        // ),
        SizedBox(width: 20),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(model['title']),
            SizedBox(height: 10),
            Text(model['date']),
  
          ],
        ),
        SizedBox(width: 40),
        IconButton(onPressed: (){
          AppCubit.get(context).UpdateData(status: 'done', id: model['id']);
        }, icon: Icon(Icons.check_box),color: Colors.green,),
        SizedBox(width: 25),
        IconButton(onPressed: (){
          AppCubit.get(context).UpdateData(status: 'archive', id: model['id']);
        }, icon: Icon(Icons.archive),color: Colors.grey,)
      ],
    ),
  ),
  confirmDismiss: (direction)async {
    AppCubit.get(context).DeleteData(
        id: model['id']
    );
  },
);

Widget buildTaskItem(Map model,color,context) => Dismissible(
  key: UniqueKey(),
  child: Card(
    elevation: 5.0,
    color: Colors.grey[100],
    margin: EdgeInsetsDirectional.all(20),
    child: SizedBox(
      height: 110,
      child: Row(
        children: [
          // CircleAvatar(
          //   radius: 40.0,
          //   child: Text(
          //     '${model['time']}',
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10
            ),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: color[Random().nextInt(color.length)],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text(model['time'] ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${model['title']}',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${model['date']}',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          IconButton(
            onPressed: () {
              AppCubit.get(context).UpdateData(
                status: 'done',
                id: model['id'],
              );
            },
            icon: Icon(
              Icons.check_box,
              color: Colors.green,
            ),
          ),
          IconButton(
            onPressed: () {
              AppCubit.get(context).UpdateData(
                status: 'archive',
                id: model['id'],
              );
            },
            icon: Icon(
              Icons.archive,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    ),
  ),
  onDismissed: (direction) {
    AppCubit.get(context).DeleteData(
      id: model['id'],
    );
  },
);
Widget tasksBuilder({required List<Map> tasks,required color}) => ConditionalBuilder(
  condition: tasks.isNotEmpty,
  builder: (context) => ListView.separated(
    itemBuilder: (context, index) => buildTaskItem(tasks[index],color, context),
    separatorBuilder: (context, index) => Divider(height: 10,),
    itemCount: tasks.length,
  ),
  fallback: (context) => Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Icon(
        Icons.menu,
        size: 150.0,
        color: Colors.grey,
      ),
      Text(
        'No Tasks Yet, please Add Some',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    ]),
  ),
);