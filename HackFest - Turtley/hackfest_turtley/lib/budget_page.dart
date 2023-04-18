import 'package:flutter/material.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
      children: <Widget>[
        Container(
            child: Stack(children: <Widget>[
          Expanded(
              child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.70 - 27,
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
              child: ListTile(
                            title: const Text('Your Income',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            focusColor: Colors.black,
                          ))),
            ),
            Container(
              height: 150,
              child: Card(
                  margin: EdgeInsets.all(15),
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.white,
                      child: Padding(
                          padding: EdgeInsets.all(13),
                          child: ListTile(
                            title: const Text('Your Income',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            focusColor: Colors.black,
                          ))),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    //set border radius more than 50% of height and width to make circle
                  )),
            ),
            Container(
              height: 150,
              child: Card(
                  margin: EdgeInsets.all(15),
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.white,
                      child: Padding(
                          padding: EdgeInsets.all(13),
                          child: ListTile(
                            title: const Text('Your Income',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            focusColor: Colors.black,
                          ))),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    //set border radius more than 50% of height and width to make circle
                  )),
            ),
          ]))
        ]))
      ],
    )));
  }
}
