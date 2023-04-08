import 'package:flutter/material.dart';
import 'package:mine/pages/bottompages/profile.dart';

class News extends StatelessWidget {
  const News({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // Color.fromARGB(255, 40, 49, 27),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 85, 139, 47),
          title: const Text(
            "News",
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
        body: Column(
          children: [
            Expanded(
                child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                longBox("crop2", "Agriculture News"),
                longBox("crop3", "Crops This Season"),
                longBox("crop2", "Rainy Season Near?"),
              ],
            )),
          ],
        ));
  }
}

Widget longBox(String image, String folderName) {
  return GestureDetector(
    onTap: () {
      ///Navigator.push(context,MaterialPageRoute(builder: (context) => const Crop()));
    },
    child: Container(
      margin: const EdgeInsets.only(bottom: 8),
      //padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                child: Image.asset(
                  'assets/images/$image.png',
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      folderName,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Tap to know more',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      
    ),
  );
}
