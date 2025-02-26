import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children:
              [
                SizedBox(
                  height: 80,
                  child: DrawerHeader(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.logo_dev_outlined),
                        TextButton.icon(
                          onPressed: () {},
                          label: Text("Close"),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('About'),
                  onTap: () {},
                ),
              ],

          )
        ),
          appBar: AppBar(
            title: Text('My App'),
            backgroundColor: const Color.fromARGB(255, 148, 135, 134),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              
            ),
          )),
    );
  }
}
