import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[ SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * .20,
            child: Stack(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.20 - 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [
                        Color.fromARGB(224, 96, 142, 169),
                        Color.fromARGB(225, 44, 92, 138),
                      ]),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                ),
              ), 
              Container(
                margin: EdgeInsets.all(100.0),
                decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle
                ),
              ),
              Padding(
              padding: const EdgeInsets.only(top: 180, left: 30, right: 30, bottom: 25,),
              child: Container(
              alignment: Alignment.center,
              child: Column(
              children: [
                const Text('Jackson Wang', textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Row(children: [SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
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
              ],)
          
          ]),)
                     // BoxDecoration
                  )]), // Container
                );}}