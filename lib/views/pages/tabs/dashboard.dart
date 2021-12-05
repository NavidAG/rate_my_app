import 'package:flutter/material.dart';
import 'package:rate_my_app/views/pages/add_new_app_page.dart';
import 'package:rate_my_app/views/widgets/app_tile.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("داشبورد"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddNewAppPage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "برترین نرم‌افزارها",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return AppTile(
                        image: "",
                        name: "نام برنامه",
                        company: "شرکت سازنده",
                        rating: "امتیاز");
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "جدیدا ثبت شده",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return AppTile(
                        image: "",
                        name: "نام برنامه",
                        company: "شرکت سازنده",
                        rating: "امتیاز");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
