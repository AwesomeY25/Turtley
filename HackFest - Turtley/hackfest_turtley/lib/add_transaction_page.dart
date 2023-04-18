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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: ElevatedButton(
          onPressed: () {
    // Validate returns true if the form is valid, or false otherwise.
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  },
child: const Text('Submit'),
),),
Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: ElevatedButton(
            onPressed: () {  },
            child: const Text('Gallery'),
),)
            ],
          );
        }}