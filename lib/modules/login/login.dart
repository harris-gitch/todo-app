import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirstproject/shared/componants/componants.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                defaultFormField(controller: emailController,
                    type: TextInputType.emailAddress,
                    validate:(String value){
                            if( value.isEmpty){
                            return 'email null';
                            }
                            },
                    label: "email",
                    prefixe: Icons.email),
                  SizedBox(
                    height: 15.0,
                  ),
              defaultFormField(
                controller: passwordController,
                suffix: isPassword ? Icons.visibility_off : Icons.visibility_off,
                isPassword: isPassword,
                suffixPressed: (){
                  setState(() {
                    isPassword = !isPassword;
                  });
                },

                type: TextInputType.visiblePassword,
                validate: (value){
                if(value.isEmpty){
                  return 'password null';
                }
                return null;
              },
                  label: 'Password',
                prefixe: Icons.lock,

             ),




                  SizedBox(
                    height: 20.0,
                  ),
                 defaultButton(
                     function: (){
                 if(_formKey.currentState!.validate()){
                   print(emailController.text);
                   }
                 }, text: "login"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}