import 'package:flutter/material.dart';
import 'package:assignment7/mypage.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}
class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);
  @override
  _FormState createState() => _FormState();
}
class _FormState extends State<Form> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _gender = TextEditingController();
  bool firstval=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Name'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Email'
                ),
              ),
            ),
            Padding(

              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _city,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your City',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _gender,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your gender'
                ),
              ),
            ),
            Container(
              child:  Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Text(
                    ' Are u Muslim ',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  SizedBox(width: 400), //SizedBox
                  /** Checkbox Widget **/
                  Checkbox(

                    onChanged: (bool? value) {

                      print("kuch bi"); }, value: firstval,
                  ), //Checkbox
                ], //<Widget>[]
              ), //Row
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>mypage(
                  name: _name.text, email: _email.text, city: _city.text,gender: _gender.text)
              ));
            }, child: Text('Go Next Page'))
          ],
        ),
      ),
    );
  }
}