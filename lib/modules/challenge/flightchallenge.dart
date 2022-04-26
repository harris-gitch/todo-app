import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class AdvantageModel{
  final String image;
  final String name;
  final int color;
  AdvantageModel({
    required this.image,
    required this.name,
    required this.color,
  });
}

class Flight extends StatelessWidget {


  List<AdvantageModel>adven=[
    AdvantageModel(image: "assets/Book.png", name: 'Resources', color: 0xff39B78C),
    AdvantageModel(image: "assets/flag.png", name: "challenge", color: 0xff083F7A),
    AdvantageModel(image: "assets/comboshape.png", name: "10+ Speakers", color: 0xffEDB202),
    AdvantageModel(image: "assets/Book.png", name: 'Resources', color: 0xff39B78C),
    AdvantageModel(image: "assets/flag.png", name: "challenge", color: 0xff083F7A),
    AdvantageModel(image: "assets/comboshape.png", name: "10+ Speakers", color: 0xffEDB202),
    AdvantageModel(image: "assets/Book.png", name: 'Resources', color: 0xff39B78C),
    AdvantageModel(image: "assets/flag.png", name: "challenge", color: 0xff083F7A),
    AdvantageModel(image: "assets/comboshape.png", name: "10+ Speakers", color: 0xffEDB202),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.logout),color: Colors.blue,iconSize: 30.0,),
                    SizedBox(width: 295,),
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.rectangle_grid_2x2_fill),color: Colors.blue,iconSize: 30.0)
                  ],
                ),
              ),
        Image.asset("assets/Dashatars1.png"),

            Container(
            height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff00A1DA)
              ),
              child: Image.asset("assets/mark.png")),
              Container(
              width: double.infinity,
              decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight:   Radius.circular(50.0),
            ),
            color: Color(0xfff1fafd),
            boxShadow: [
              BoxShadow(blurRadius: 1.0),

            ],

              ),
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 40,
                    left: 40,
                  right: 40.0
                    ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Flutter Flight Event ",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
             /* SizedBox(
                height: 15.0,
              ),*/
              Padding(
                padding: const EdgeInsets.only(
                  right: 40.0,
                  top: 20.0,
                  left: 40.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("By Ranya",
                    style: TextStyle(fontSize: 20,color: Color(0xff00A1DA)),),
                  ],
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 40,
                    left: 40,
                    right: 40.0,
                    bottom: 20.0
                ),
                child: Row(
                  children: [
                   Image.asset("assets/birdev.png"),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text("Event Details",
                    style: TextStyle(
                      fontSize: 20.0,
                    color: Color(0xff00A1DA),
                    fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only( right: 20.0,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children: [
                        Text('Date',style: TextStyle(
                          color: Color(0xff00A1DA),
                          fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 20.0,),
                        Text("16 April 2022",style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children: [
                        Text('Time',style: TextStyle(
                            color: Color(0xff00A1DA),
                            fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 20.0,),
                        Text("7:00 pm",style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(.0),
                    child: Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children: [
                        Text('Duration',style: TextStyle(
                            color: Color(0xff00A1DA),
                            fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 20.0,),
                        Text("3 Days",style: TextStyle(
                            fontSize: 17.0,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  )
                ],
                ),
              ),

              Container(
            height: 50.0,
            width: 225.0,
            decoration: BoxDecoration(
              color: Color(0xff00A1DA),
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: [
                BoxShadow(
                  blurRadius:2.0
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Notify me",style: TextStyle(
                  color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 10.0,
                    ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20.0
                    ),
                    child: Icon(CupertinoIcons.bell_solid, size: 30,color: Colors.white,),
                  ),
                ],
              ),
            ),
              ),
               Padding(
             padding: const EdgeInsets.all(40.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Description",style: TextStyle(
                   fontSize: 20.0,
                   fontWeight: FontWeight.bold,
                   color: Color(0xff00A1DA)
                 ),),
                 SizedBox(
                   height: 20.0,
                 ),
                 Text("Whether you are a Beginner, Intermediate level or want to turn yourself into a Professional, GDSC USTHB is here to guide you through the process of becoming a true Flutter Dev.",
                 style: TextStyle(
                   fontSize: 15,
                 ),),
                 SizedBox(
                   height: 20.0,
                 ),
                 Row(
                   children: [
                     Text("Read More",style: TextStyle(
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,
                         color: Color(0xff00A1DA)
                     ),),
                     SizedBox(
                       width: 30.0,
                     ),
                     Image.asset("assets/Arrow1.png")
                   ],
                 )
               ],
             ),
               ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 40,
                    right: 40.0,
                    bottom: 20.0
                ),
                child: Row(
                  children: [
                    Image.asset("assets/bird2.png"),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text("Testimonies",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xff00A1DA),
                          fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            Padding(
              padding:  const EdgeInsets.only(
                left: 40,
                right: 40.0,
                top: 20.0
            ),
              child: Column(
                children: [
                  Row(
                      children: [
                        Text("YourWords",style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 100,),

                            Text("See all",style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.grey
                            ),),
                            SizedBox(
                              width: 1.0,
                            ),
                           Icon(Icons.keyboard_arrow_right_rounded,color:  Colors.grey,size: 30,)

                      ],
                    ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right:260.0,
                      top: 20.0
                  ),
                    child: Text("@Ranya",style: TextStyle(
                      fontSize: 17,
                      color: Colors.black
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25.0
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("GDSC USTHB has given me the chance to develop, to work and make progress in such short time.",
                          style: TextStyle(
                            fontSize: 15,
                          ),),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Text("Read Testimony",style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff00A1DA)
                            ),),
                            SizedBox(
                              width: 30.0,
                            ),
                            Image.asset("assets/Arrow1.png")
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                    left: 40,
                    right: 40.0,
                    bottom: 20.0
                ),
                child: Row(
                  children: [
                    Image.asset("assets/bird3.png"),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text("Adventages",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xff00A1DA),
                          fontWeight: FontWeight.bold),)
                  ],
                ),
              ),


                 Padding(
                   padding: const EdgeInsets.only(
                     top: 20.0,
                   ),
                   child: Container(
                     height: 130,
                     width: double.infinity,
                     child: ListView.separated(
                           scrollDirection: Axis.horizontal,
                         shrinkWrap: true,
                           itemBuilder: (context, index) =>BuildItem(adven[index]),
                           itemCount: adven.length,
                       separatorBuilder: (BuildContext context, int index) =>SizedBox(
                         width: 20.0,
                       ),),
                   ),
                 ),

              Padding(
                padding: const EdgeInsets.only(
                    top: 40,
                    left: 40,
                    right: 40.0,
                    bottom: 20.0
                ),
                child: Row(
                  children: [
                    Image.asset("assets/Flutter_Marketingbird.png"),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Frequently Asked Questions",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xff00A1DA),
                          fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 40
                ),
                child: Text("FIND ALL YOUR ANSWERS RELATED TO THIS EVENT.",style: TextStyle(
                  fontSize: 15,
                ),),
              ),
             Padding(
               padding: const EdgeInsets.only(
                   top: 40.0,
               ),
               child: Container(
                 width: 370,
                   height: 73,
                   decoration: BoxDecoration(
                       color: Colors.white
                   ),
                 child: Container(

                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Text("Who can participate in this workshop?",style: TextStyle(
                             fontSize: 15.0,
                             fontWeight: FontWeight.bold
                         ),
                         ),
                         SizedBox(
                           width: 15,
                         ),
                         Image.asset("assets/Arrow1.png"),
                       ],
                     ),
                   ),
                 )
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 40.0,
                    ),
                child: Container(
                    width: 370,
                   height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Container(

                      child: Row(
                        children: [
                          Text("What are the prerequisites for joining "
                              "this workshop",style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset("assets/Arrow1.png"),
                        ],
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 40.0,
                   ),
                child: Container(
                    width: 370,
                    height: 73,
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("can i interact with the host at the workshop?",style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Image.asset("assets/Arrow1.png"),
                          ],
                        ),
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 40.0,
                    ),
                child: Container(
                    width: 370,
                    height: 73,
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("is it pre-recorded or live workshop?",style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Image.asset("assets/Arrow1.png"),
                          ],
                        ),
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Post Your Question",style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff00A1DA)
                    ),),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("Your question might be answered as soon as possible.",
                      style: TextStyle(
                        fontSize: 15,
                      ),),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 342,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text("Please submit your questions",style: TextStyle(
                          fontSize: 20.0,color: Colors.grey
                        ),),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.blue
                      ),
                      child: IconButton(onPressed: (){}, icon: Text("post",style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),)),
                    )
                  ],
                ),
              ),
            ],
              ),
            ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight:   Radius.circular(50.0),
              ),
              color: Color(0xff00A1DA),
              boxShadow: [
                BoxShadow(blurRadius: 1.0),

              ],

                ),
                child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 69.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                      boxShadow: [
                        BoxShadow(
                            blurRadius:2.0
                        )
                      ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Sign Up",style: TextStyle(
                            color: Color(0xff00A1DA),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0
                          ),
                          child: Image.asset("assets/pen.png")
                        ),
                      ],
                    ),
                  ),
                ),
              ],
                ),
              ),
            ],
          ),
        ),
      ),

    ),
    );
  }
 Widget BuildItem(AdvantageModel adv)=>Row(
   children: [
     Container(
            width: 140,
             decoration: BoxDecoration(
               color: Color(adv.color),
               borderRadius: BorderRadius.circular(10.0),
             ),
             child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset(adv.image),
                   SizedBox(
                       height: 5.0
                   ),
                   Text(adv.name,style: TextStyle(
                       color: Colors.white
                   ),)
                 ],
               ),
             ),


     ),
   ],
 );

}

