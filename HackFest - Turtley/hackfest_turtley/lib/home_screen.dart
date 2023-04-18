import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: PageView(
          controller: pageController,
          children: [
            InsurancePage(),
            CoursesPage(),
            AddTransactionPage(),
            BudgetPage(),
            ProfilePage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Container(
            child: Icon(Icons.add_rounded, color: Colors.black),
            height: 70,
            width: 70,
            //color: Color.fromARGB(230, 246, 245, 253),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 241, 240, 245),
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
          backgroundColor: Color.fromARGB(255, 241, 240, 245),
          onPressed: () {
            _onItemTapped(2);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(18.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 20, blurRadius: 15),
              ],
            ),
            child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/insurance-icon.svg"),
                  label: 'Insurance',
                  backgroundColor: Color.fromARGB(225, 44, 92, 138),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/course-icon.svg"),
                  label: 'Courses',
                  backgroundColor: Color.fromARGB(225, 44, 92, 138),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add,
                    color: Color.fromARGB(225, 44, 92, 138),
                  ),
                  label: '',
                  backgroundColor: Color.fromARGB(225, 44, 92, 138),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/budget-icon.svg"),
                  label: 'Budget',
                  backgroundColor: Color.fromARGB(225, 44, 92, 138),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/profile-icon.svg"),
                  label: 'Profile',
                  backgroundColor: Color.fromARGB(225, 44, 92, 138),
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Color.fromARGB(255, 246, 245, 253),
              unselectedItemColor: Color.fromARGB(238, 191, 191, 197),
              onTap: _onItemTapped,
            ),
          ),
        ));
  }
}
