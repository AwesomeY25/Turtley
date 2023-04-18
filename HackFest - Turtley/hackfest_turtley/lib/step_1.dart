import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hackfest_turtley/budget_page.dart';

class StepOne extends StatefulWidget {
  const StepOne({super.key});

  @override
  State<StepOne> createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  final List<String> incomeStream = <String>['yes'];
  final List<num> numIncome = <num>[3000];
  TextEditingController nameController = TextEditingController();
  TextEditingController incomeController = TextEditingController();
  TextEditingController savingsController = TextEditingController();
  TextEditingController needsController = TextEditingController();
  TextEditingController wantsController = TextEditingController();

  void addItemToList() {
    setState(() {
      incomeStream.insert(0, nameController.text);

      numIncome.insert(0, num.parse(incomeController.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: <Widget>[
          IconButton(
            alignment: Alignment.topLeft,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: incomeStream.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 20,
                      margin: EdgeInsets.all(2),
                      child: Container(
                          child: Text(
                        '${incomeStream[index]} - P${numIncome[index]}',
                        style: TextStyle(fontSize: 18),
                      )),
                    );
                  })),
          Container(
              child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Income Stream',
              ),
            ),
          )),
          Container(
              child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: incomeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Income Amount',
              ),
            ),
          )),
          ElevatedButton(
            child: Text('Add'),
            onPressed: () {
              addItemToList();
            },
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Card(
                margin: EdgeInsets.all(15),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),

                  //set border radius more than 50% of height and width to make circle
                ),
                child: SizedBox(
                    height: 300,
                    child: Column(
                      children: [
                        Column(children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.all(20),
                                child: TextField(
                                  controller: savingsController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Savings',
                                  ),
                                ),
                              )),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.all(20),
                                child: TextField(
                                  controller: needsController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Needs',
                                  ),
                                ),
                              )),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.all(20),
                                child: TextField(
                                  controller: wantsController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Wants',
                                  ),
                                ),
                              )),
                            ],
                          )
                        ]),
                      ],
                    )),
              ))
        ]));
  }
}
