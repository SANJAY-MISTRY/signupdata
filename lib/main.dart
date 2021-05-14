import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup/list.dart';

void main() {
  runApp(MaterialApp(
    title: 'SignUp Data Show',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {

  var _name ;
  var _email;
  var _number;

  final namecon = new TextEditingController();
  final emailcon = new TextEditingController();
  final numbercon = new TextEditingController();
  // this allows us to access the TextField text
  // TextEditingController textFieldController = TextEditingController();
  // EmailEditingController emailFieldController = EmailEditingController();
  // NumEditingController numFieldController = NumEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SignUp screen')),
      body: Center(
          child: Scrollbar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          controller: namecon,
                          decoration: InputDecoration(
                            hintText: 'User Name.',
                          ),

                          keyboardType: TextInputType.name,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          controller: emailcon,
                          decoration: InputDecoration(
                            hintText: 'Enter your Email ID.',
                          ),

                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          controller: numbercon,
                          decoration: InputDecoration(
                            hintText: 'Enter Yor Mobile Number',
                          ),

                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 300,
                  height:60,
                  child: RaisedButton(
                    color: Colors.greenAccent,
                    splashColor: Colors.yellow[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black),
                    ),
                    onPressed: () {
                      setState(() {
                        _name = namecon.text;
                        _email = emailcon.text;
                        _number = numbercon.text;
                      });
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  child: Text("User Name: $_name", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green,)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Text("Email Id: $_email", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Text("Mobile Number: $_number", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green)),
                ),
              ],
            ),
          )
      ),
    );
  }

}

