import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage()
));

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://media.giphy.com/media/U3qYN8S0j3bpK/giphy.gif"),
                fit: BoxFit.cover)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50,),
            Padding(
              padding:  EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text("Stars APP",
                      style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.normal,fontFamily: "Stars"),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Text("Wecome Back",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20 ,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0),

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10,),
                      Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 154, 255, 3),
                            blurRadius: 20,
                            offset: Offset(0,10)
                          )]
                        ),
                        child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border : Border(bottom: BorderSide(color: Colors.grey[200]))
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Email or Phone number " ,
                                hintStyle: TextStyle(
                                  color: Colors.grey),
                                border: InputBorder.none
                                )

                              ),
                            ),
                          Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border : Border(bottom: BorderSide(color: Colors.grey[200]))
                        ),
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: "Password" ,
                                hintStyle: TextStyle(
                                    color: Colors.grey),
                                border: InputBorder.none
                            )
                        ),
                      ),
                  ]
                        ),
                      ),
                      SizedBox(height: 40,),
                      Text("Forgot Password",style: TextStyle(
                        color: Colors.grey),),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color:  Colors.orange[900],
                    ),
                    child: Center(
                      child: Text("Login",style: TextStyle(
                          color: Colors.white, fontSize: 20), ),
                    ),
                  ),


                      SizedBox(height: 30, ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:  Colors.blue
                              ),
                              child: Center(
                                child: Text("Facebook",style: TextStyle(
                                    color: Colors.white), ),
                              ),
                            ),
                          ),
                        SizedBox(width: 30,),
                        Expanded(
                             child: Container(
                                          height: 50,
                                     decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50),
                                color:  Colors.black
                                     ),
                               child: Center(
                             child: Text("GitHub",style: TextStyle(
                                 color: Colors.white),),
                        ),
                             )
                        )
                        ],
                      )
                    ]
                  )
                ),
              ),
            ),
        ]
                  ),
                ),
              );
  }
}
