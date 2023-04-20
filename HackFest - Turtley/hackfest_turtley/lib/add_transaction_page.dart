// ignore: unused_import
import 'dart:io';
import 'package:flutter/material.dart';


class AddTransactionPage extends StatelessWidget {
  const AddTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
    padding: const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 25,),
    child: Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          const Text('Add Transaction', textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          //Put form here
          SingleChildScrollView(
            child: Column(
              children: [MyCustomForm()]),
            ),
          ],
        ),
      ),
    ),
  );}
}

// ignore: must_be_immutable
class MyCustomForm extends StatelessWidget {
  MyCustomForm({super.key});
  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  double _income = 0.0;
  // ignore: unused_field
  double _expense = 0.0;
  // ignore: unused_field
  double _balance = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: TextFormField( 
            validator: (value) {
            if (value == null || value.isEmpty) {
            return 'Please enter some text';}
            return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              labelText: "How much did you spend?",
              hintText: 'Enter the amount (in PHP)', 
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: TextFormField( 
            validator: (value) {
            if (value == null || value.isEmpty) {
            return 'Please enter some text';}
            return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              labelText: "What did you spend it for?",
              hintText: 'Sample Category',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: TextFormField( 
            validator: (value) {
            if (value == null || value.isEmpty) {
            return 'Please enter some text';}
            return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              labelText: "When did you made the purchase?",
              hintText: 'Enter date (MM-DD-YYYY)',
            ),
          ),
        ),
        Row( children: [
      ElevatedButton(
         onPressed: () {
        },
        // padding: const EdgeInsets.all(0.0),
         style: ElevatedButton.styleFrom(
    shape: StadiumBorder(), 
  ), child: Container(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20,),
          child:SizedBox(
            height: 20.0,
            width: 100.0,
            child: Container(
                margin: const EdgeInsets.only( left: 25.0 ),
                child: Text(
                  "Back",
                  style: TextStyle( fontSize: 15.0),
                )
            ),
          ),
    )),
    ElevatedButton(
         onPressed: () {
    showAlertDialog(context);
        },
        // padding: const EdgeInsets.all(0.0),
         style: ElevatedButton.styleFrom(
    shape: StadiumBorder(), 
  ), child: Container(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20,),
          child:SizedBox(
            height: 20.0,
            width: 100.0,
            child: Container(
                margin: const EdgeInsets.only(left: 20 ),
                child: Text(
                  "Submit",
                  style: TextStyle( fontSize: 15.0),
                )
            ),
          ),
    ))])
      ]
      );
              }}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(child: Container(
        child: ElevatedButton(child: Text("Show Pop-up"),
  onPressed: () {
    showAlertDialog(context);
  },
),
      ),
    ));
  }
}

// Define a function that shows the dialog
void showAlertDialog(BuildContext context) {
  // Create the AlertDialog
  AlertDialog dialog = AlertDialog(
      title: Text('Congratulations!', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      content: Container(
        height: 400,
        child: Column(
          children: [
            Image.asset(
              'assets/images/Turtley.png',
              height: 350,
            ),
            Text('Keep up building good financial habits! Look who just hatched today!'),
          ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          child: Text('Close'),
          style: ElevatedButton.styleFrom(
    shape: StadiumBorder(),
  ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

  // Show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return dialog;
    },
  );
}