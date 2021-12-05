import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("داشبورد"),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              title: Text("نام کاربری"),
              subtitle: Text("username"),
              leading: Container(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              trailing: Icon(Icons.edit),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.wallet_travel),
              title: Text("حساب کاربری"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text("تنظیمات"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.logout),
              title: Text("خروج از حساب کاربری"),
            ),
          ],
        ),
      ),
    );
  }
}
