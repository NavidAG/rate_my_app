import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddNewAppPage extends StatefulWidget {
  const AddNewAppPage({Key? key}) : super(key: key);

  @override
  _AddNewAppPageState createState() => _AddNewAppPageState();
}

class _AddNewAppPageState extends State<AddNewAppPage> {
  bool switchValue1 = false;
  bool switchValue2 = false;
  bool switchValue3 = false;
  bool switchValue4 = false;
  bool switchValue5 = false;
  bool switchValue6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ورود اطلاعات نرم‌افزار"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(10),
                children: [
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
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        hintText: 'عنوان',

                        // border: InputBorder.none,
                      ),
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
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        hintText: 'توضیحات',

                        // border: InputBorder.none,
                      ),
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
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        hintText: 'لینک',

                        // border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: OutlinedButton(
                      child: Text("انتخاب تصویر"),
                      onPressed: () async {
                        await _pickImage();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "انواع ارزیابی",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SwitchListTile(
                    title: Text("متریک‌ها"),
                    value: switchValue1,
                    onChanged: (value) {
                      setState(() {
                        switchValue1 = value;
                      });
                    },
                  ),
                  SwitchListTile(
                    title: Text("مقایسه"),
                    value: switchValue2,
                    onChanged: (value) {
                      setState(() {
                        switchValue2 = value;
                      });
                    },
                  ),
                  SwitchListTile(
                    title: Text("رای دهی"),
                    value: switchValue3,
                    onChanged: (value) {
                      setState(() {
                        switchValue3 = value;
                      });
                    },
                  ),
                  SwitchListTile(
                    title: Text("پرسشنامه"),
                    value: switchValue4,
                    onChanged: (value) {
                      setState(() {
                        switchValue4 = value;
                      });
                    },
                  ),
                  SwitchListTile(
                    title: Text("رتبه‌بندی"),
                    value: switchValue5,
                    onChanged: (value) {
                      setState(() {
                        switchValue5 = value;
                      });
                    },
                  ),
                  SwitchListTile(
                    title: Text("نظرسنجی"),
                    value: switchValue6,
                    onChanged: (value) {
                      setState(() {
                        switchValue6 = value;
                      });
                    },
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
                onPressed: () {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Home(),
                  //   ),
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _pickImage() async {
    ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  }
}
