import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      bool isPassword=false,
      required Function validate,
      required String label,
      required IconData prefixe,
      IconData? suffix,
      Function? suffixPressed,
      bool clickable=true,
    })=>  TextFormField(
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
        validate;
        return null;
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