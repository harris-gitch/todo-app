import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:myfirstproject/modules/bmi_result/bmi_result_screen.dart';

class Bmiclacul extends StatefulWidget {

  @override
  State<Bmiclacul> createState() => _BmiclaculState();
}

class _BmiclaculState extends State<Bmiclacul> {

   bool isMale=true;
   double height=120.0;
   int weight =40;
   int age=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("calculator"),
      ),
    body:  Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(

              children: [
                Expanded(
                  child: GestureDetector(
                    onTap:() {
                     setState(() {
                      isMale=true;
                     });
                    },
                   child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                       Icon(Icons.male,size: 70.0,),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text("male",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:isMale ? Colors.blue : Colors.grey[400]
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                      isMale=false;
                      });
                    },

                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                           Icon(Icons.female,size: 70.0,),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text("female",
                            style: TextStyle(
                                fontSize: 25.0,
                              fontWeight: FontWeight.bold
                            ),)
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: !isMale ? Colors.blue : Colors.grey[400]
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ),
        Expanded(
          child:Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0
            ),
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[300]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hieght",
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    ),),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${height.round()}',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("CM",
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                        ),),

                    ],
                  ),
                  Slider(value: height,
                      max: 200,
                      min: 80, onChanged: (value){
                      setState(() {
                        height=value;
                      });
                      })
                ],
              ),
            ),
          )
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300]
                    ),
                    child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:  [
                       const Text("Weight",
                         style: TextStyle(
                             fontSize: 25.0,
                             fontWeight: FontWeight.bold
                         ),),
                        Text('$weight',
                         style: TextStyle(
                             fontSize: 25.0,
                             fontWeight: FontWeight.bold
                         ),),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           FloatingActionButton(onPressed: (){
                             setState(() {
                               weight--;
                             });
                           },
                               heroTag: 'weight-',
                               child: Icon(Icons.remove),
                               mini :true),
                           FloatingActionButton(onPressed: (){
                             setState(() {
                               weight++;
                             });
                           },
                               heroTag: 'weight+',
                               child: Icon(Icons.add),
                           mini :true),
                         ],
                       )
                     ],
                    ),
                  ),
                ),
                 SizedBox(
                   width: 20.0,
                 ),
                 Expanded(
                   child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text("Age",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),),
                         Text('$age',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                                heroTag: 'age-',
                                child: Icon(Icons.remove),
                                mini :true),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                                heroTag: 'age+',
                                child: Icon(Icons.add),
                                mini :true),
                          ],
                        )
                      ],
                    ),
                ),
                 )
              ],
            ),
          )
        ),
        Container(
          width: double.infinity,
          height: 70.0,
          child: MaterialButton(onPressed: (){
            double result = weight / pow(height / 100, 2);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BMIResultScreen(
                  age: age,
                  isMale: isMale,
                  result: result.round(),
                ),
              ),
            );
          },
          child: const Text("calculate",
          style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),),
        )
      ],
    ),

    );

  }
}
