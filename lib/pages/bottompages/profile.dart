import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 85, 139, 47), //Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 85, 139, 47),
        title: const Text(
          "Profile",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(
            top: 20.0), //to adjust space between circle and top
        child: Stack(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 80.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                color: Colors
                    .white, //Color.fromARGB(255, 220, 237, 200), //Color.fromARGB(255, 178, 203, 145),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))), //radius of edit icon
            child: Column(
              children: const <Widget>[
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: <Widget>[
                  ClipOval(
                      child: Image.asset(
                    'assets/images/one.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  )),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: const Icon(
                          Icons.edit,
                          size: 30.0,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 160),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Ardra S M',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 230),
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('About',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('Hi I am Ardra', style: TextStyle(fontSize: 20)),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
