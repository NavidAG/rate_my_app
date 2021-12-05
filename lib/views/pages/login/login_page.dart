import 'package:flutter/material.dart';
import 'package:rate_my_app/views/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ورود",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  // textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 10),
                    prefixIconConstraints: BoxConstraints(maxWidth: 50),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    hintText: 'شماره تلفن',

                    // border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  // textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 20,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 10),
                    prefixIconConstraints: BoxConstraints(maxWidth: 50),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    hintText: 'رمز عبور',

                    // border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 90,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text("ورود"),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
