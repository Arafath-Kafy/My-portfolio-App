import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';
import 'package:portfolio/Education.dart';
import 'package:portfolio/appdev.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/cvpage.dart';
import 'package:portfolio/workpage.dart';

class MenuItem {
  final String name;
  final String imagePath;
  final Widget destinationPage;

  MenuItem({
    required this.name,
    required this.imagePath,
    required this.destinationPage,
  });
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SkillsPage(),
    ),
  );
}

class SkillsPage extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      name: 'App Development',
      imagePath: 'appdevlogo.png',
      destinationPage: appdevPage(),
    ),
    MenuItem(
      name: 'UI Design',
      imagePath: 'uideslogo.png',
      destinationPage: appdevPage(),
    ),
    MenuItem(
      name: 'Graphics Design',
      imagePath: 'gdlogo.png',
      destinationPage: appdevPage(),
    ),
    MenuItem(
      name: 'Game Development',
      imagePath: 'gamedevlogo.png',
      destinationPage: appdevPage(),
    ),
    MenuItem(
      name: 'Software Quality Assurance',
      imagePath: 'sqalogo.png',
      destinationPage: appdevPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.purpleAccent,
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Skills",
              style: TextStyle(color: Colors.purpleAccent),
            ),
          ],
        ),
        elevation: 0,
        titleSpacing: 20,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: bgcolor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0), // Add vertical padding
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
          ),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => menuItems[index].destinationPage,
                  ),
                );
              },
              child: Container(
                height: 300,
                child: Image.asset(
                  'assets/${menuItems[index].imagePath}',
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),

      drawer: Drawer(
        child: Container(
          color: bgcolor,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                    decoration: const BoxDecoration(color: Colors.transparent),
                    accountName: const Text(
                      "Md. Arafath Kafy",
                      style: TextStyle(color: Colors.white),
                    ),
                    accountEmail: const Text(
                      "arafathkafy@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                    currentAccountPicture:
                    Image.asset("assets/formal pic.png")),
              ),
              ListTile(
                leading: const Icon(
                  Icons.person_outlined,
                  color: Colors.purpleAccent,
                ),
                title: const Text(
                  'About',
                  style: TextStyle(color: Colors.purpleAccent),
                ),
                onTap: () {
                  // Navigate to the settings page
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.school_outlined,
                  color: Colors.purpleAccent,
                ),
                title: const Text(
                  'Education',
                  style: TextStyle(color: Colors.purpleAccent),
                ),
                onTap: () {
                  // Navigate to the settings page
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EducationPage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.work_outline,
                  color: Colors.purpleAccent,
                ),
                title: const Text(
                  'Work',
                  style: TextStyle(color: Colors.purpleAccent),
                ),
                onTap: () {
                  // Navigate to the settings page
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WorkPage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.bookmark_add_outlined,
                  color: Colors.purpleAccent,
                ),
                title: const Text(
                  'Skills',
                  style: TextStyle(color: Colors.purpleAccent),
                ),
                onTap: () {
                  // Navigate to the settings page
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SkillsPage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.contacts_outlined,
                  color: Colors.purpleAccent,
                ),
                title: const Text(
                  'Contact',
                  style: TextStyle(color: Colors.purpleAccent),
                ),
                onTap: () {
                  // Navigate to the settings page
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactPage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.description_outlined,
                  color: Colors.purpleAccent,
                ),
                title: const Text(
                  'C.V.',
                  style: TextStyle(color: Colors.purpleAccent),
                ),
                onTap: () {
                  // Navigate to the settings page
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CPage2()),
                  );
                },
              ),
            ],
          ),
        ),
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
      ),

    );
  }
}

