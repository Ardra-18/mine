import 'package:flutter/material.dart';
//import 'package:mine/pages/data/cropdata.dart';
import 'package:mine/pages/homepage/croppredict.dart';
import 'package:mine/pages/homepage/moisturecontrol.dart';
import 'package:mine/pages/homepage/weather.dart';
import 'package:mine/pages/knowcrop.dart';
import 'package:mine/pages/bottompages/profile.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double availableScreenWidth = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width - 50;
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white, // Color.fromARGB(255, 40, 49, 27),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 84, 147, 56),
        //const Color.fromARGB( 255, 78, 111, 67), // const Color.fromARGB(255, 127, 164, 101),
        /* title: const Text(
          "Welcome to",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),*/
        elevation: 0,
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
              leading: const Icon(Icons.menu),
              title: const Text('Hello'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.newspaper),
              title: const Text('News'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      /*  body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              Column(
                children: [
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
                                builder: (context) => const Crop()));
                      },
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
                  Text('ndcjfdnc'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Stack(children: [
                  GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 5,
                      childAspectRatio: 1 / 1,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Npk()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 127, 164, 101),
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/crop3.png'),
                                    fit: BoxFit.cover)),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Crop()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 127, 164, 101),
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/crop1.png'),
                                    fit: BoxFit.cover)),
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
                        )
                      ]),
                ]),
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Moisture()));
                            },
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 208, 207, 207),
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(3, 3),
                                      blurRadius: 3,
                                    ),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, right: 20, left: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        // shape: BoxShape.circle
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Icons.water_drop_outlined,
                                        size: 30,
                                      )),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "MOSITURE LEVEL CONTROL",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Control the level of moisture your crop receives",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text('hehehe'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('hehehe'),
            ],
          ),
        ),
      ),
    */
      body: Column(children: [
        // Header Section
        Container(
          padding: const EdgeInsets.only(left: 70, bottom: 20),
          //padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          alignment: Alignment.topCenter,
          height: 100,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 84, 147, 56),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Welcome to",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Text(
                    "Be Green",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            /* Row(
              children: [
                Container(
                  
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(.1)),
                  child: IconButton(
                    icon: const Icon(
                      Icons.notifications,
                      size: 28,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )*/
          ]),
        ),
        const SizedBox(
          height: 5,
        ),

        const Divider(
          height: 10,
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Crop()));
                },
                child: Container(
                  width: 200.0,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(121, 139, 195, 74),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            child: Image.asset(
                              'assets/images/crop2.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'KNOW YOUR CROPS',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Tap to know more about your crops',
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
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Features",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Npk()));
                        },
                        child: buildFileColumn('crop3', 'Crop Prediction')),
                  ),
                  SizedBox(
                    width: availableScreenWidth * .03,
                  ),
                  Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Weather()));
                        },
                        child: buildFileColumn('cloud', 'Weather')),
                  ),
                  SizedBox(
                    width: availableScreenWidth * .03,
                  ),
                  Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Npk()));
                        },
                        child: buildFileColumn('crop2', 'Crop Timeline')),
                  ),
                ],
              ),
              const Divider(
                height: 20,
              ),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Projects ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Create new",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),*/
              const SizedBox(
                height: 20,
              ),
              // Folder List
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Moisture()));
                  },
                  child: longBox("Moisture Contoller")),
              longBox("TimeNote"),
            ],
          ),
        )
      ]),
    );
  }
}

Widget longBox(String folderName) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.symmetric(horizontal: 20),
    height: 65,
    decoration: BoxDecoration(
        color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          Icon(
            Icons.water_drop_outlined,
            color: Colors.blue[200],
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            folderName,
            style: const TextStyle(
              fontSize: 16,
            ),
          )
        ],
      ),
    ]),
  );
}

Column buildFileColumn(String image, String filename) {
  return Column(
    children: [
      Container(
        width: 100,

        decoration: BoxDecoration(
          //color: Color.fromARGB(255, 218, 80, 80),
          borderRadius: BorderRadius.circular(20),
          //border: Border.all(color: Colors.black, width: 2)
        ),
        //padding: const EdgeInsets.all(38),
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/images/$image.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      RichText(
        text: TextSpan(
          text: filename,
          style: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}

class CropCard extends StatelessWidget {
  const CropCard({
    Key? key,
    //required this.image,
    required this.title,
  }) : super(key: key);

  final String title;

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
        //image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)
      ),
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
