import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .15,
            child: Stack(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.15 - 17,
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
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child:Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('https://example.com/my-image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(children: [
                  Column(children: [
                    Padding(
                    padding: const EdgeInsets.only(top: 180, left: 100, bottom: 50,),
                    child: Container(
                    alignment: Alignment.center,
                    child: Column(
                    children: [
                      const Text('Jackson Wang', textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white,)),
                  ],
                  ),
                ),
              ),
                ]),
            ]),) // BoxDecoration
            ]), // Container
          ), // Positioned
         
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                      elevation: 20,
                      margin: EdgeInsets.all(15),
                      color: Color.fromARGB(225, 44, 92, 138),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                          width: 350,
                          height: 90,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.center,
                                  colors: [
                                    Color.fromARGB(224, 96, 142, 169),
                                    Color.fromARGB(225, 44, 92, 138),
                                  ]),
                              borderRadius: BorderRadius.circular(30)),
                          child: ListTile(
                            leading: Image.asset(
                              'assets/images/Egg.png',
                              height: 700,
                            ),                         
                            title: Text("3 days to hatch!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                            subtitle: Text("Use the application for 3 days to get your turtle!", style: TextStyle(color: Colors.grey),),
                          ))),
                  Card(
                      elevation: 20,
                      margin: EdgeInsets.all(15),
                      color: Color.fromARGB(225, 44, 92, 138),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                          width: 350,
                          height: 90,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.center,
                                  colors: [
                                    Color.fromARGB(224, 96, 142, 169),
                                    Color.fromARGB(225, 44, 92, 138),
                                  ]),
                              borderRadius: BorderRadius.circular(30)),
                          child: ListTile(
                            leading: Image.asset(
                              'assets/images/Egg.png',
                              height: 700,
                            ),                         
                            title: Text("3 days to hatch!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                            subtitle: Text("Use the application for 3 days to get your turtle!", style: TextStyle(color: Colors.grey),),
                          ))),
                ],
              )),
          Column(children: [
                    Container(
                    alignment: Alignment.center,
                    child: Column(
                    children: [
                      const Text('Summary', textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey,)),
                  ],
                  ),
                ),
            ]),
            Row(
              children: [
                Center(child: Card(
                    elevation: 20,
                    child: Container(
                      width: 370,
                      height: 120,
                      child: ListTile(
                      title: Text("My Income", style: TextStyle(fontSize: 30),),
                      subtitle: Text("There is nothing to display here."),
                    ),
                    ),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    )),)
              ],
            ),
            Row(
              children: [
                Center(child: Card(
                    elevation: 20,
                    child: Container(
                      width: 370,
                      height: 120,
                      child: ListTile(
                      title: Text("My Expenses", style: TextStyle(fontSize: 30),),
                      subtitle: Text("There is nothing to display here."),
                    ),
                    ),
                    margin: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    )),)
              ],
            ),
          ]),
      );
  }
}