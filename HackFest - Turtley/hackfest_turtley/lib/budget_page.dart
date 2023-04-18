import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';
import 'package:hackfest_turtley/add_transaction_page.dart';
import 'package:hackfest_turtley/step_1.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Wrap(children: [
      FractionallySizedBox(
          child: Container(
              height: MediaQuery.of(context).size.height * 0.55 - 27,
              width: MediaQuery.of(context).size.width,
              // insert chart
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    stops: [
                      0.40,
                      2,
                    ],
                    colors: [
                      Color.fromARGB(224, 96, 142, 169),
                      Color.fromARGB(225, 44, 92, 138),
                    ]),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
              ),
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.all(30.0),
                    child: ListTile(
                        title: const Text(
                      'My Goals',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 5.0, // shadow blur
                              color: Colors.black, // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ]),
                    ))),
                Center(
                    child: Container(
                  width: 250.0,
                  height: 250.0,
                  child: DChartPie(
                    data: [
                      {'domain': 'Flutter', 'measure': 28},
                      {'domain': 'React Native', 'measure': 27},
                      {'domain': 'Ionic', 'measure': 20},
                      {'domain': 'Cordova', 'measure': 15},
                    ],
                    fillColor: (pieData, index) => Colors.white,
                    donutWidth: 30,
                    labelColor: Colors.white,
                  ),
                ))
              ]))),
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
                      trailing: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StepOne()));
                        },
                      ),
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
                      title: const Text('Your Expenses',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      focusColor: Colors.black,
                      trailing: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddTransactionPage()));
                        },
                      ),
                    ))),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              //set border radius more than 50% of height and width to make circle
            )),
      ),
    ])));
  }
}
