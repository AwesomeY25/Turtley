import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Stack(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.25 - 27,
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
                        width: MediaQuery.of(context).size.width * 0.75,
                        margin: EdgeInsets.only(left: 20, right: 5, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 9),
                                blurRadius: 50,
                                color: Colors.black.withOpacity(.5),
                              )
                            ]),
                        child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Talk to a mentor",
                                style: TextStyle(
                                    fontSize: 19, color: Colors.grey))))
                  ]),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.search,
                            color: Colors.black.withOpacity(.5)),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          elevation: 20,
                          shadowColor: Colors.black,
                          padding: EdgeInsets.all(10),
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
          Scrollbar(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
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
                                        subtitle: const Text(
                                            'Financial Institutions',
                                            style: TextStyle(fontSize: 20)),
                                      ))),
                              color: Color.fromARGB(225, 44, 92, 138),
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
                                        title: const Text('Level 2',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.bold)),
                                        subtitle: const Text(
                                            'Budgeting and Saving',
                                            style: TextStyle(fontSize: 20)),
                                      ))),
                              color: Color.fromARGB(225, 44, 92, 138),
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
                                        title: const Text('Level 3',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.bold)),
                                        subtitle: const Text('Credit and Debt',
                                            style: TextStyle(fontSize: 20)),
                                      ))),
                              color: Color.fromARGB(225, 44, 92, 138),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                //set border radius more than 50% of height and width to make circle
                              )),
                        ),
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}
