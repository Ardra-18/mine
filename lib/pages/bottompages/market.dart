import 'package:flutter/material.dart';
import 'package:mine/pages/bottompages/profile.dart';

class Market extends StatelessWidget {
  const Market({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Color.fromARGB(255, 40, 49, 27),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 85, 139, 47),
        title: const Text(
          "Market",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 5,
        //top right corner small icon
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                //child: const Center(child: Text("0")),
              ),
            ),
          )
        ],
        //the icon ends here
      ),
    );
  }
}
