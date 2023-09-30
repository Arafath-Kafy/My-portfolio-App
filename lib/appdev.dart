import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';
import 'package:portfolio/Education.dart';
import 'package:portfolio/appdev.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/cvpage.dart';
import 'package:portfolio/skills.dart';
import 'package:portfolio/workpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: appdevPage(),
    ),
  );
}

class appdevPage extends StatelessWidget {
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
            Text("My Portfolio", style: TextStyle(color: Colors.purpleAccent),),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'App Development Projects:',
              style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ImageCard(
              imagePath: 'assets/prj1.png',
              caption: 'Shop Management system',
            ),
            /*SizedBox(height: 16),
            ImageCard(
              imagePath: 'assets/image2.jpg',
              caption: 'Mountains Landscape',
            ),*/
            // Add more ImageCard widgets as needed
          ],
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

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String caption;

  ImageCard({
    required this.imagePath,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 400,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              caption,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}