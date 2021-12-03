import 'package:flutter/material.dart';

class AppTile extends StatelessWidget {
  //TODO: Might be replaced with a Model
  final String image;
  final String name;
  final String company;
  final String rating;

  const AppTile({
    Key? key,
    required this.image,
    required this.name,
    required this.company,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            spreadRadius: 0.01,
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        children: [
          Placeholder(
            fallbackHeight: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: Text(
              this.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 5),
            child: Text(
              this.company,
              style: TextStyle(color: Colors.grey[800], fontSize: 15),
            ),
          ),
          Spacer(),
          Text(this.rating)
        ],
      ),
    );
  }
}
