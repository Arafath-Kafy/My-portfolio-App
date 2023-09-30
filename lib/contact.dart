import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';
import 'package:portfolio/Education.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/cvpage.dart';
import 'package:portfolio/skills.dart';
import 'package:portfolio/workpage.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactPage(),
    ),
  );
}

class ContactPage extends StatelessWidget {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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
            Text(
              "Contact Information",
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContactTile(
              icon: Icons.email,
              label: 'Email',
              value: 'arafathkafy@gmail.com',
              onTap: () => _launchURL('arafathkafy@gmail.com'),
            ),
            ContactTile(
              icon: Icons.phone,
              label: 'Phone',
              value: '+8801400065916',
              onTap: () => _launchURL('tel:+8801400065916'),
            ),
            ContactTile(
              icon: Icons.link,
              label: 'LinkedIn',
              value: 'Arafath Kafy',
              onTap: () => _launchURL('https://www.linkedin.com/in/arafath-kafy-4a41161a1/'),
            ),
            ContactTile(
              icon: Icons.link,
              label: 'Facebook',
              value: 'Arafath Kafy',
              onTap: () => _launchURL('https://www.facebook.com/profile.php?id=100016648234935'),
            ),
            ContactTile(
              icon: Icons.link,
              label: 'Instagram',
              value: 'instagram.com/Arafath Kafy',
              onTap: () => _launchURL('https://www.instagram.com/arafathkafy/'),
            ),
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

class ContactTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final VoidCallback onTap;

  const ContactTile({
    required this.icon,
    required this.label,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.purpleAccent, // Set icon color to white
      ),
      title: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        value,
        style: TextStyle(color: Colors.white),
      ),
      onTap: onTap,
    );
  }
}
