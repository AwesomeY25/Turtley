import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InsurancePage extends StatelessWidget {
  const InsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .15,
            child: Stack(children: <Widget>[
              Container(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        IconButton(
                          iconSize: 50,
                          icon: SvgPicture.asset("assets/icons/turtley.svg"),
                          onPressed: () {},
                        ),
                        Text(
                          'TURTLEY',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 5.0, // shadow blur
                                  color: Colors.black, // shadow color
                                  offset: Offset(2.0,
                                      2.0), // how much shadow will be shown
                                ),
                              ]),
                        ),
                      ],
                    )),
                height: MediaQuery.of(context).size.height * 0.15 - 27,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(218, 77, 225, 161),
                        Color.fromARGB(225, 44, 92, 138),
                      ]),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                ),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(children: [
                  Column(children: [
                    Container(
                        height: 54,
                        width: MediaQuery.of(context).size.width * 0.70,
                        margin: EdgeInsets.only(left: 20, right: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: Colors.black.withOpacity(.5),
                              )
                            ])),
                  ]),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.shopping_cart,
                            color: Colors.black.withOpacity(.5)),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          elevation: 20,
                          shadowColor: Colors.black,
                          padding: EdgeInsets.all(15),
                          backgroundColor: Colors.white, // <-- Button color
                          foregroundColor: Color.fromARGB(225, 44, 92, 138),
                        ),
                      )
                    ],
                  )
                ]),
              ), // BoxDecoration
            ]), // Container
          ), // Positioned

          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                      elevation: 20,
                      margin: EdgeInsets.all(15),
                      color: Color.fromARGB(225, 44, 92, 138),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),

                        //set border radius more than 50% of height and width to make circle
                      ),
                      child: Container(
                          width: 220,
                          height: 125,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.center,
                                  colors: [
                                    Color.fromARGB(224, 96, 142, 169),
                                    Color.fromARGB(225, 44, 92, 138),
                                  ]),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Your Budget Plans',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 5.0, // shadow blur
                                            color: Colors.black, // shadow color
                                            offset: Offset(2.0,
                                                2.0), // how much shadow will be shown
                                          ),
                                        ]),
                                  ))))),
                  Card(
                      elevation: 20,
                      margin: EdgeInsets.all(15),
                      color: Color.fromARGB(225, 44, 92, 138),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),

                        //set border radius more than 50% of height and width to make circle
                      ),
                      child: Container(
                          width: 220,
                          height: 125,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.center,
                                  colors: [
                                    Color.fromARGB(224, 96, 142, 169),
                                    Color.fromARGB(225, 44, 92, 138),
                                  ]),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Your Courses',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 5.0, // shadow blur
                                            color: Colors.black, // shadow color
                                            offset: Offset(2.0,
                                                2.0), // how much shadow will be shown
                                          ),
                                        ]),
                                  ))))),
                  Card(
                      elevation: 20,
                      margin: EdgeInsets.all(15),
                      color: Color.fromARGB(225, 44, 92, 138),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),

                        //set border radius more than 50% of height and width to make circle
                      ),
                      child: Container(
                          width: 220,
                          height: 125,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.center,
                                  colors: [
                                    Color.fromARGB(224, 96, 142, 169),
                                    Color.fromARGB(225, 44, 92, 138),
                                  ]),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Your Insurance Plans',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 5.0, // shadow blur
                                            color: Colors.black, // shadow color
                                            offset: Offset(2.0,
                                                2.0), // how much shadow will be shown
                                          ),
                                        ]),
                                  ))))),
                ],
              )),
          Column(children: [
            Row(
              children: [
                Card(
                    elevation: 20,
                    child: Container(
                        width: 170,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage("assets/images/family.jpg"),
                              fit: BoxFit.cover,
                            )),
                        child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Family Insurance',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5.0, // shadow blur
                                          color: Colors.black, // shadow color
                                          offset: Offset(2.0,
                                              2.0), // how much shadow will be shown
                                        ),
                                      ]),
                                )))),
                    margin: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),

                      //set border radius more than 50% of height and width to make circle
                    )),
                Card(
                    elevation: 20,
                    child: Container(
                        width: 170,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage("assets/images/life.jpg"),
                              fit: BoxFit.cover,
                            )),
                        child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Life Insurance',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5.0, // shadow blur
                                          color: Colors.black, // shadow color
                                          offset: Offset(2.0,
                                              2.0), // how much shadow will be shown
                                        ),
                                      ]),
                                )))),
                    margin: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),

                      //set border radius more than 50% of height and width to make circle
                    )),
              ],
            ),
            Row(
              children: [
                Card(
                    elevation: 20,
                    child: Container(
                        width: 170,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage("assets/images/couple.jpg"),
                              fit: BoxFit.cover,
                            )),
                        child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Investments Insurance',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5.0, // shadow blur
                                          color: Colors.black, // shadow color
                                          offset: Offset(2.0,
                                              2.0), // how much shadow will be shown
                                        ),
                                      ]),
                                )))),
                    margin: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),

                      //set border radius more than 50% of height and width to make circle
                    )),
                Card(
                    elevation: 20,
                    child: Container(
                        width: 170,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage("assets/images/car.jpg"),
                              fit: BoxFit.cover,
                            )),
                        child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Car Insurance',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5.0, // shadow blur
                                          color: Colors.black, // shadow color
                                          offset: Offset(2.0,
                                              2.0), // how much shadow will be shown
                                        ),
                                      ]),
                                )))),
                    margin: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),

                      //set border radius more than 50% of height and width to make circle
                    )),
              ],
            ),
            Row(
              children: [
                Card(
                    elevation: 20,
                    child: Container(
                        width: 170,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage("assets/images/education.jpg"),
                              fit: BoxFit.cover,
                            )),
                        child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Education Insurance',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5.0, // shadow blur
                                          color: Colors.black, // shadow color
                                          offset: Offset(2.0,
                                              2.0), // how much shadow will be shown
                                        ),
                                      ]),
                                )))),
                    margin: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),

                      //set border radius more than 50% of height and width to make circle
                    )),
                Card(
                    elevation: 20,
                    child: Container(
                        width: 170,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage("assets/images/more.jpg"),
                              fit: BoxFit.cover,
                            )),
                        child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'More Products',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5.0, // shadow blur
                                          color: Colors.black, // shadow color
                                          offset: Offset(2.0,
                                              2.0), // how much shadow will be shown
                                        ),
                                      ]),
                                )))),
                    margin: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),

                      //set border radius more than 50% of height and width to make circle
                    )),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
