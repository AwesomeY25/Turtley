import 'package:flutter/material.dart';

class InsurancePage extends StatelessWidget {
  const InsurancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .30,
            child: Stack(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.30 - 27,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [
                        Color.fromARGB(224, 90, 191, 234),
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
                      margin: EdgeInsets.all(12),
                      color: Color.fromARGB(225, 44, 92, 138),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),

                        //set border radius more than 50% of height and width to make circle
                      ),
                      child: SizedBox(
                        width: 200,
                        height: 100,
                      )),
                  Card(
                      margin: EdgeInsets.all(15),
                      color: Color.fromARGB(225, 44, 92, 138),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),

                        //set border radius more than 50% of height and width to make circle
                      ),
                      child: SizedBox(
                        width: 200,
                        height: 100,
                      )),
                  Card(
                      margin: EdgeInsets.all(15),
                      color: Color.fromARGB(225, 44, 92, 138),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),

                        //set border radius more than 50% of height and width to make circle
                      ),
                      child: SizedBox(
                        width: 200,
                        height: 100,
                      ))
                ],
              )),
          Column(
            children: [
              Card(
                  child: SizedBox(
                    width: 170,
                    height: 180,
                  ),
                  margin: EdgeInsets.all(12),
                  color: Color.fromARGB(225, 44, 92, 138),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),

                    //set border radius more than 50% of height and width to make circle
                  )),
              Card(
                  child: SizedBox(
                    width: 170,
                    height: 180,
                  ),
                  margin: EdgeInsets.all(12),
                  color: Color.fromARGB(225, 44, 92, 138),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),

                    //set border radius more than 50% of height and width to make circle
                  )),
              Card(
                  child: SizedBox(
                    width: 170,
                    height: 180,
                  ),
                  margin: EdgeInsets.all(12),
                  color: Color.fromARGB(225, 44, 92, 138),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),

                    //set border radius more than 50% of height and width to make circle
                  ))
            ],
          ),
          Stack(
            children: [
              Card(
                  child: SizedBox(
                    width: 170,
                    height: 180,
                  ),
                  margin: EdgeInsets.all(12),
                  color: Color.fromARGB(225, 44, 92, 138),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),

                    //set border radius more than 50% of height and width to make circle
                  ))
            ],
          )
        ],
      ),
    );
  }
}
