import 'package:flutter/material.dart';
import 'package:hostel_app/pages/LoginPage.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Hostel App',
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.00),
                    border: Border.all(
                        color: Colors.black
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.2,
                  child: Text('Rollcall'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.00),
                    border: Border.all(
                        color: Colors.black
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.2,
                  child: Text('Dhobi'),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Welcome',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                  )),
                ),
            ListTile(
              title: Text('Login'),
              onTap:() {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginpage()));
              }
            ),
            ListTile(
              title: Text('Settings'),
            ),
            ListTile(
              title: Text('Contact us'),
            ),
            ListTile(
              title: Text('About us'),
            )
          ],
        ),

      ),
    );
  }
}
