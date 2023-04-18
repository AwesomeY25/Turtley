import 'dart:ffi';

import 'package:flutter/material.dart';

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

  void addItemToList() {
    setState(() {
      incomeStream.insert(0, nameController.text);

      numIncome.insert(0, num.parse(incomeController.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      IconButton(
        alignment: Alignment.topLeft,
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
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
            labelText: 'Income Stream',
          ),
        ),
      )),
      ElevatedButton(
        child: Text('Add'),
        onPressed: () {
          addItemToList();
        },
      ),
      Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: incomeStream.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  margin: EdgeInsets.all(2),
                  child: Container(
                      child: Text(
                    '${incomeStream[index]} - P${numIncome[index]}',
                    style: TextStyle(fontSize: 18),
                  )),
                );
              }))
    ]));
  }
}
