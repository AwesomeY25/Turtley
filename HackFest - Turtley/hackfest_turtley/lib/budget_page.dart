import 'package:flutter/material.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
      Container(
          child: Stack(
        children: <Widget>[
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
            ),
            Container(
                child: Column(children: [
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
                              title: const Text('Level 1',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                              subtitle: const Text('Financial Institutions',
                                  style: TextStyle(fontSize: 20)),
                            ))),
                    color: Color.fromARGB(225, 44, 92, 138),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      //set border radius more than 50% of height and width to make circle
                    )),
              ),
            ]))
          ]))
        ],
      ))
    ])));
  }
}
