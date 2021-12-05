import 'package:flutter/material.dart';
import 'package:rate_my_app/views/pages/login/login_page.dart';
import 'package:rate_my_app/views/pages/login/sign_up_page.dart';

class IntroPage extends StatelessWidget {
  List<String> texts = [
    "نرم افزار خود را ثبت کنید",
    "نرم افزار خود را ثبت کنید",
    "نرم افزار خود را ثبت کنید",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: texts.length,
                itemBuilder: (context, index) {
                  return _pageViewPages(texts[index]);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text("ثبت نام"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text("ورود"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _pageViewPages(String text) {
    return Container(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              child: Placeholder(
                fallbackHeight: 300,
              )),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
