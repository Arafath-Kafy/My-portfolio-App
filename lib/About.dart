import 'package:flutter/material.dart';
import 'package:portfolio/Education.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/cvpage.dart';
import 'package:portfolio/skills.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/workpage.dart';

void main()
{
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AboutPage(),
      )
  );
}

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  _AboutPageState createState() => _AboutPageState();
}
class _AboutPageState extends State<AboutPage>
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
        padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(

                children: <Widget>[
                  const SizedBox(height: 40,),
                  Image.asset(
                    "assets/intro pic.png",
                    width: 350, // Adjust the width as needed
                    height: 410, // Adjust the height as needed
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SizedBox(height: 40,),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Text("About Me: ", style: TextStyle(fontSize: 26,color: Colors.purpleAccent,fontFamily: "Roboto"),),
                      ],
                    ),

                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Expanded(child:
                        Text(
                          "Assalamualaikum, I am Md. Arafath Kafy. A student of Computer Science and Engineering. "
                              "Dreaming to be a qualified Computer Engineer. "
                              "Thinking about setting my career in Software quality assurance sector."
                              "Lot of thinks to be learned."
                              "My home town is Munshiganj."
                              "Though i grown up in Dhaka."
                              "I am the youngest son of my parents among their two son."
                              "I am a Fast learner, And like to learn things by myself which i don't need any help to learn. "
                              "I like to finish my work in time."
                              "That's why deadline matters a lot to me"
                              "I like to lead disciplined life."
                              "There is more about me. If you are interested contact with me through my given contact information. Have a good day",
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
              const SizedBox(height: 70,),
              const Text("An Arafath Kafy's Creation", style: TextStyle(fontSize: 14,color: Colors.lime,fontFamily: "Roboto"),),
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

