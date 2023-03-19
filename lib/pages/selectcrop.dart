import 'package:flutter/material.dart';
import 'package:mine/pages/cropdetails.dart';
import 'package:mine/pages/data/cropdata.dart';
//import 'package:mine/pages/homepage/croppredict.dart';
//import 'package:mine/pages/cropdetails.dart';

class Crop extends StatefulWidget {
  const Crop({
    Key? key,
    //required this.index,
    //required this.Fruitdata,
  }) : super(key: key);

  @override
  State<Crop> createState() => _CropState();
}

class _CropState extends State<Crop> {
  //final int index;
  //final List<FruitDataModel> Fruitdata;

  final List<Product> _product = [
    Product(image: 'crop1.png', title: 'Hello'),
    Product(image: 'crop1.png', title: 'Hi'),
  ];

  static List<String> fruitname = [
    'Tomato',
    'Mango',
    'Cotton',
    'Banana',
    'Pineapple'
  ];
  static List<String> imagepath = [
    'assets/images/tomato.png',
    'assets/images/Mango.png',
    'assets/images/Cotton.png',
    'assets/images/Banana.png',
    'assets/images/tomato.png',
  ];
  final List<FruitDataModel> fruitdata = List.generate(
      fruitname.length,
      (index) => FruitDataModel(fruitname[index], imagepath[index],
          '${fruitname[index]} Description...'));

  // PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Color.fromARGB(255, 40, 49, 27),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 85, 139, 47),
        title: const Text(
          "Be Green",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 5,
        //the icon ends here
      ),
      body: ListView.builder(
        itemCount: fruitdata.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CropDetail(
                      product: _product[index], fruitDataModel: fruitdata[index],
                         // fruitDataModel: fruitdata[index],
                        )),
              );
            },
            child: Card(
              child: ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset(imagepath[index]),
                ),
                title: Text(fruitdata[index].name),
              ),
            ),
          );
        },
      ),
      /*
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              const Text(
                'Select the crop you wanna know more about!',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  //controller: ScrollController(keepScrollOffset: false),
                  mainAxisSpacing: 10,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        // Navigator.push(context, PageTransition(child: DetailPage(plantId: _plantList[index].plantId), type: PageTransitionType.bottomToTop));
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Npk()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color:
                                    const Color.fromARGB(255, 200, 221, 171)),
                            //color: Color.fromARGB(255, 200, 221, 171),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/tomato.png'),
                                fit: BoxFit.cover)),
                        padding: const EdgeInsets.all(4),
                        child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'TOMATO',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
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
                                builder: (context) => const Npk()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color:
                                    const Color.fromARGB(255, 200, 221, 171)),
                            //color: Color.fromARGB(255, 200, 221, 171),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/Cotton.png'),
                                fit: BoxFit.cover)),
                        padding: const EdgeInsets.all(4),
                        child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'COTTON',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
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
                                builder: (context) => const Npk()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color:
                                    const Color.fromARGB(255, 200, 221, 171)),
                            //color: Color.fromARGB(255, 200, 221, 171),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/Mango.png'),
                                fit: BoxFit.cover)),
                        padding: const EdgeInsets.all(4),
                        child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'MANGO',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
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
                                builder: (context) => const Npk()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color:
                                    const Color.fromARGB(255, 200, 221, 171)),
                            //color: Color.fromARGB(255, 200, 221, 171),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/Banana.png'),
                                fit: BoxFit.cover)),
                        padding: const EdgeInsets.all(4),
                        child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'BANANA',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),*/
    );
  }
}

class Product {
  String title;
  String image;
  Product({required this.title, required this.image});
}
