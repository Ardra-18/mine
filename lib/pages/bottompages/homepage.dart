import 'package:flutter/material.dart';
//import 'package:mine/pages/data/cropdata.dart';
import 'package:mine/pages/gitfold/homecrop.dart';
import 'package:mine/pages/gitfold/details.dart';
import 'package:mine/pages/homepage/croppredict.dart';
import 'package:mine/pages/selectcrop.dart';
import 'package:mine/pages/bottompages/profile.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Color.fromARGB(255, 40, 49, 27),
      appBar: AppBar(
        /*leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text('Drawer head'),
                  ),
                  ListTile(
                    title: const Text('Hello'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        ),*/
        backgroundColor: const Color.fromARGB(255, 84, 147, 56),
        //const Color.fromARGB( 255, 78, 111, 67), // const Color.fromARGB(255, 127, 164, 101),
        title: const Text(
          "Be Green",
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
              ),
            ),
          )
        ],
        //the icon ends here
      ),
      drawer: Drawer(
        width: 220,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 84, 147, 56)),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                            'assets/images/one.jpg',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Ardra S M',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Hello'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('News'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Exit'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              /*Row(
                children: <Widget>[
                  const Text(
                    'Select Your Crop',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  const Text(
                    'More',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 127, 164, 101)),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(255, 127, 164, 101),
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const <Widget>[
                    CropCard(
                      image: "assets/images/tomato.png",
                      title: "Tomato",
                    ),
                    CropCard(
                      image: "assets/images/Mango.png",
                      title: "Mango",
                    ),
                    CropCard(
                      image: "assets/images/Cotton.png",
                      title: "Cotton",
                    ),
                    CropCard(
                      image: "assets/images/Banana.png",
                      title: "Banana",
                    ),
                    CropCard(
                      image: "assets/images/tomato.png",
                      title: "Tomato",
                    ),
                    CropCard(
                      image: "assets/images/Banana.png",
                      title: "Banana",
                    )
                  ],
                ),
              ),
              */
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 78, 111, 67),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/crop1.png'),
                        fit: BoxFit.cover)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "Know Your Crops",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                //controller: ScrollController(keepScrollOffset: false),
                mainAxisSpacing: 10,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Npk()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 127, 164, 101),
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/crop3.png'),
                              fit: BoxFit.cover)),
                      padding: const EdgeInsets.all(8),
                      //color: Colors.amber,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Crop Prediction',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Crop()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 178, 203, 145),
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/crop1.png'),
                              fit: BoxFit.cover)),
                      padding: const EdgeInsets.all(8),
                      //color: Colors.amber,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Disease Analysis',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Npk()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 178, 203, 145),
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/crop1.png'),
                              fit: BoxFit.cover)),
                      padding: const EdgeInsets.all(8),
                      //color: Colors.amber,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Moisture Controller',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Npk()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 127, 164, 101),
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/crop3.png'),
                              fit: BoxFit.cover)),
                      padding: const EdgeInsets.all(8),
                      //color: Colors.amber,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Crop Timeline',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class CropCard extends StatelessWidget {
  const CropCard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 5),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(
              width: 3, color: const Color.fromARGB(255, 200, 221, 171)),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      padding: const EdgeInsets.all(4),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
