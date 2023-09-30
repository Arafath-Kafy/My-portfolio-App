import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/cvpage.dart';
import 'package:portfolio/skills.dart';
import 'package:portfolio/workpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: EducationPage(),
  ));
}

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.purpleAccent,
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Education",
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
      body: Container(
        child: const Padding(
          padding: EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "School:",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.purpleAccent,
                          fontFamily: "Roboto"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(child:
                    Text(
                      "I studied in A.K. High School And College. It is in Dhonia, Dhaka. I Passed out from there in 2017. My result in SSC was G.P.A. 5.00. ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                          fontFamily: "Roboto"),
                    ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 12,
                    ),

                    Text(
                      "College:",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.purpleAccent,
                          fontFamily: "Roboto"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(child: Text(
                      "I studied in university laboratory School And College. It is in  It is on the campus of Institute of Education and Research, Dhaka University, Nilkhet Road, Dhaka. I Passed out from there in 2019. My result in SSC was G.P.A. 4.00. ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                          fontFamily: "Roboto"),
                    ),)

                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "University:",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.purpleAccent,
                          fontFamily: "Roboto"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(child:
                    Text(
                      "Currently i am studying in Daffodil International University. I am a Undergraduate Student of B.Sc. programme. My department is Computer science and Engineering. ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                          fontFamily: "Roboto"),
                    ),
                    ),
                  ],
                ),


              ],
            ),
          ),
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
                leading: const Icon(
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
