import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InsurancePage extends StatelessWidget {
  InsurancePage({super.key});
  final margins = double.parse('10'); //product margins
  @override
  Widget build(BuildContext context) {
    final insuranceHeight =
        MediaQuery.of(context).size.height * .30; //product height
    final insuranceWidth =
        MediaQuery.of(context).size.width * .50; //product width
    final fontProduct = double.parse('18');
    final radiusProduct = double.parse('15');
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .20,
            child: Stack(children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .center, //Center Column contents vertically,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                  color: Color.fromARGB(
                                      225, 44, 92, 138), // shadow color
                                  offset: Offset(1.0,
                                      1.0), // how much shadow will be shown
                                ),
                              ]),
                        ),
                        Icon(Icons.wb_sunny, color: Colors.transparent),
                      ],
                    )
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.20 - 27,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(225, 44, 92, 138),
                        Color.fromARGB(218, 77, 225, 161),
                      ]),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                ),
              ),
              Container(
                child: Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(children: [
                    Column(children: [
                      Container(
                          height: 50,
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
              )
            ]), // Container
          ), // Positioned

          SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Container(
                  height: MediaQuery.of(context).size.height * .22,
                  width: MediaQuery.of(context).size.width * 2,
                  child: Row(
                    children: [
                      Card(
                          elevation: 15,
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
                                  color: Colors.white,
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
                                          color: Colors.black,
                                        ),
                                      ))))),
                      Card(
                          elevation: 15,
                          margin: EdgeInsets.all(margins),
                          color: Color.fromARGB(225, 44, 92, 138),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),

                            //set border radius more than 50% of height and width to make circle
                          ),
                          child: Container(
                              width: 220,
                              height: 125,
                              decoration: BoxDecoration(
                                  color: Colors.white,
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
                                          color: Colors.black,
                                        ),
                                      ))))),
                      Card(
                          elevation: 15,
                          margin: EdgeInsets.all(margins),
                          color: Color.fromARGB(225, 44, 92, 138),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),

                            //set border radius more than 50% of height and width to make circle
                          ),
                          child: Container(
                              width: 220,
                              height: 125,
                              decoration: BoxDecoration(
                                  color: Colors.white,
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
                                          color: Colors.black,
                                        ),
                                      ))))),
                    ],
                  ))),

          Flexible(
            fit: FlexFit.tight,
            child: Column(children: [
              Row(
                children: [
                  SizedBox(
                      width: insuranceWidth,
                      height: insuranceHeight,
                      child: Card(
                          elevation: 20,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Column(
                            children: [
                              Container(
                                  width: insuranceWidth,
                                  height: insuranceHeight * .45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage("assets/images/car.jpg"),
                                    fit: BoxFit.cover,
                                  ))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 15, right: 15),
                                  child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'Car Insurance',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: fontProduct,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ))),
                              Container(
                                  child: ButtonBar(
                                alignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.shopping_bag_outlined)),
                                ],
                              ))
                            ],
                          ),
                          margin: EdgeInsets.all(margins),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radiusProduct),

                            //set border radius more than 50% of height and width to make circle
                          ))),
                  SizedBox(
                      width: insuranceWidth,
                      height: insuranceHeight,
                      child: Card(
                          elevation: 20,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Column(
                            children: [
                              Container(
                                  width: insuranceWidth,
                                  height: insuranceHeight * .45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/family.jpg"),
                                    fit: BoxFit.cover,
                                  ))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 15, right: 15),
                                  child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'Family Insurance',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: fontProduct,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ))),
                              Container(
                                  child: ButtonBar(
                                alignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.shopping_bag_outlined)),
                                ],
                              ))
                            ],
                          ),
                          margin: EdgeInsets.all(margins),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radiusProduct),

                            //set border radius more than 50% of height and width to make circle
                          ))),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: insuranceWidth,
                      height: insuranceHeight,
                      child: Card(
                          elevation: 20,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Column(
                            children: [
                              Container(
                                  width: insuranceWidth,
                                  height: insuranceHeight * .45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/family.jpg"),
                                    fit: BoxFit.cover,
                                  ))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 15, right: 15),
                                  child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'Family Insurance',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: fontProduct,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ))),
                              Container(
                                  child: ButtonBar(
                                alignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.shopping_bag_outlined)),
                                ],
                              ))
                            ],
                          ),
                          margin: EdgeInsets.all(margins),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radiusProduct),

                            //set border radius more than 50% of height and width to make circle
                          ))),
                  SizedBox(
                      width: insuranceWidth,
                      height: insuranceHeight,
                      child: Card(
                          elevation: 20,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Column(
                            children: [
                              Container(
                                  width: insuranceWidth,
                                  height: insuranceHeight * .45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/family.jpg"),
                                    fit: BoxFit.cover,
                                  ))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 15, right: 15),
                                  child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'Family Insurance',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: fontProduct,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ))),
                              Container(
                                  child: ButtonBar(
                                alignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.shopping_bag_outlined)),
                                ],
                              ))
                            ],
                          ),
                          margin: EdgeInsets.all(margins),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radiusProduct),

                            //set border radius more than 50% of height and width to make circle
                          ))),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: insuranceWidth,
                      height: insuranceHeight,
                      child: Card(
                          elevation: 20,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Column(
                            children: [
                              Container(
                                  width: insuranceWidth,
                                  height: insuranceHeight * .45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/family.jpg"),
                                    fit: BoxFit.cover,
                                  ))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 15, right: 15),
                                  child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'Family Insurance',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: fontProduct,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ))),
                              Container(
                                  child: ButtonBar(
                                alignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.shopping_bag_outlined)),
                                ],
                              ))
                            ],
                          ),
                          margin: EdgeInsets.all(margins),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radiusProduct),

                            //set border radius more than 50% of height and width to make circle
                          ))),
                  SizedBox(
                      width: insuranceWidth,
                      height: insuranceHeight,
                      child: Card(
                          elevation: 20,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Column(
                            children: [
                              Container(
                                  width: insuranceWidth,
                                  height: insuranceHeight * .45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/family.jpg"),
                                    fit: BoxFit.cover,
                                  ))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 15, right: 15),
                                  child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'Family Insurance',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: fontProduct,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ))),
                              Container(
                                  child: ButtonBar(
                                alignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.shopping_bag_outlined)),
                                ],
                              ))
                            ],
                          ),
                          margin: EdgeInsets.all(margins),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radiusProduct),

                            //set border radius more than 50% of height and width to make circle
                          ))),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
