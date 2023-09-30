import 'package:flutter/material.dart';
import 'package:portfolio/Navigator.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    ),
  );
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Welcome pic.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Your other widgets
              SizedBox(height: 120),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.purple),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavigatorPage()),
                  );
                },
                child: Text('Know More About Me', style: TextStyle(fontSize: 23,color:Colors.white70,fontFamily: "Roboto"),),
              ),
              //SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
