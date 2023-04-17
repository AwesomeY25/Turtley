import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Insurance',
      style: optionStyle,
    ),
    Text(
      'Index 1: Courses',
      style: optionStyle,
    ),
    Text(
      'Index 2: Add Transaction',
      style: optionStyle,
    ),
    Text(
      'Index 3: Budget',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.security_outlined),
            label: 'Insurance',
            backgroundColor: Color.fromARGB(225, 44, 92, 138),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Courses',
            backgroundColor: Color.fromARGB(225, 44, 92, 138),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.control_point_outlined),
            label: 'Add Transaction',
            backgroundColor: Color.fromARGB(225, 44, 92, 138),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined),
            label: 'Budget',
            backgroundColor: Color.fromARGB(225, 44, 92, 138),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
            backgroundColor: Color.fromARGB(225, 44, 92, 138),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 246, 245, 253),
        onTap: _onItemTapped,
      ),
    );
  }
}
