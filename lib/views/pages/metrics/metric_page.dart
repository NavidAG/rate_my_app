import 'package:flutter/material.dart';

class MetricPage extends StatefulWidget {
  const MetricPage({Key? key}) : super(key: key);

  @override
  _MetricPageState createState() => _MetricPageState();
}

class _MetricPageState extends State<MetricPage> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("از طریق متریک"),
      ),
      body: Container(
          child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "انواع ارزیابی",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  title: Text("دسته ۱"),
                  leading: Radio(
                    value: 0,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value as int;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("دسته ۲"),
                  leading: Radio(
                    value: 1,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value as int;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("دسته ۳"),
                  leading: Radio(
                    value: 2,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value as int;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("دسته ۴"),
                  leading: Radio(
                    value: 3,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value as int;
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
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
                      hintText: 'تعداد افراد',

                      // border: InputBorder.none,
                    ),
                  ),
                ),
              ],
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
              child: Text("ثبت"),
              onPressed: () {},
            ),
          ),
        ],
      )),
    );
  }
}
