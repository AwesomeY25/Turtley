import 'package:flutter/material.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Container(
          height: MediaQuery.of(context).size.height * .70,
          child: Stack(children: <Widget>[
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
          ]))
    ]));
  }
}
