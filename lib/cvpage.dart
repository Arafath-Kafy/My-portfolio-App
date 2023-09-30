import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';
import 'package:portfolio/Education.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/skills.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/workpage.dart';

void main()
{
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CPage2(),
      )
  );
}

class CPage2 extends StatefulWidget {
  const CPage2({super.key});

  @override
  _CPage2State createState() => _CPage2State();
}
class _CPage2State extends State<CPage2>
    with SingleTickerProviderStateMixin {


  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }


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
            Text("My CV", style: TextStyle(color: Colors.purpleAccent),),
          ],
        ),
        elevation: 0,
        titleSpacing: 20,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        backgroundColor: Colors.transparent,

      ),
      backgroundColor: bgcolor,



      body: const Padding(
        padding: EdgeInsets.only(top: 15.0, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Text("No CV uploaded yet.", style: TextStyle(fontSize: 26,color: Colors.purpleAccent,fontFamily: "Roboto"),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
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




      // If you want to disable swiping in tab the use below code



    );
  }




}

