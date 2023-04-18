import 'package:flutter/material.dart';
import 'package:hackfest_turtley/budget_page.dart';
import 'package:hackfest_turtley/profile_page.dart';
import 'add_transaction_page.dart';
import 'courses_page.dart';
import 'insurance_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: PageView(
        controller: pageController,
        children: [
          Container(
            color: Color.fromARGB(230,246,245,253),
            child: InsurancePage(),),
          Container(
            color: Color.fromARGB(230,246,245,253),
            child: CoursesPage(),),
          Container(
            color: Color.fromARGB(230,246,245,253),
            child: AddTransactionPage()),
          Container(
            color: Color.fromARGB(230,246,245,253),
            child: BudgetPage(),),
          Container(
            color: Color.fromARGB(230,246,245,253),
            child: ProfilePage(),),
        ]
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
        unselectedItemColor: Color.fromARGB(238, 191, 191, 197),
        onTap: _onItemTapped,
      ),
    );
  }
}
