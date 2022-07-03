import 'package:flutter/material.dart';
class mypage extends StatelessWidget{
  String name,email,city,gender;

  mypage({Key? key,required this.name,required this.email,required this.city,required this.gender}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
        body: Center(
            child:Center(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("First Name: ${name}",style: TextStyle(fontSize: 10,)),
                    Text("Email: ${email}",style: TextStyle(fontSize: 10,)),
                    Text("City: ${city}",style: TextStyle(fontSize: 10,)),
                    Text("gender: ${gender}",style: TextStyle(fontSize: 10,)),
                  ],
                )
            )
        )
    );
  }
}