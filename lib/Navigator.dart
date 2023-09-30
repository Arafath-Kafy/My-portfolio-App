import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';
import 'package:portfolio/Education.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/skills.dart';
import 'package:portfolio/workpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigatorPage(),
    ),
  );
}

class NavigatorPage extends StatefulWidget {
  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> with SingleTickerProviderStateMixin {
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
      backgroundColor: bgcolor,

      body: TabBarView(
        children: <Widget>[
          AboutPage(),
          EducationPage(),
          WorkPage(),
          SkillsPage(),
          ContactPage()// Change to your actual EducationPage
          // ... Add other pages for 'work', 'Skills', 'Contacts'
        ],
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            color: bnavclr,
            child: TabBar(
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              //For Indicator Show and Customization
              indicatorColor: Colors.black54,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.person_2_outlined,
                    size: 24.0,
                  ),
                  text: 'About',
                ),
                Tab(
                  icon: Icon(
                    Icons.school_outlined,
                    size: 24.0,
                  ),
                  text: 'Education',
                ),
                Tab(
                  icon: Icon(
                    Icons.work_outline,
                    size: 24.0,
                  ),
                  text: 'Work',
                ),
                Tab(
                  icon: Icon(
                    Icons.bookmark_add_outlined,
                    size: 24.0,
                  ),
                  text: 'Skills',
                ),
                Tab(
                  icon: Icon(
                    Icons.contacts_outlined,
                    size: 24.0,
                  ),
                  text: 'Contacts',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),


    );
  }
}
