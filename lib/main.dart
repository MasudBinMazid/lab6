import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 0;
  final List<Widget> pages = [
    HomeScreen(),
    SettingsScreen(),
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 94, 175),
        title: Center(child: Text("My App")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 167, 149, 199),
                  const Color.fromARGB(255, 10, 193, 92),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
              child: const Row(
                children: [
                  Icon(Icons.fastfood),
                  SizedBox(
                    width: 18,
                  ),
                  Text('Cooking Up!'),
                ],
              ),
            ),
            ListTile(
              title: Text("Recent"),
              leading: Icon(Icons.alarm),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Hello World"),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Image"),
              leading: Icon(Icons.image),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Hello Image "),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Video"),
              leading: Icon(Icons.movie),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Hello Ripon Video"),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Sd Card"),
              leading: Icon(Icons.sd_card),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.eject),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Open SD-card"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
          "https://plus.unsplash.com/premium_photo-1681412205238-8171ccaca82b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20,
        ),
        CachedNetworkImage(
          imageUrl:
              "https://images.unsplash.com/photo-1737712334404-28df394651a6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ],
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
          "https://images.unsplash.com/photo-1724430943574-23348700dfea?q=80&w=2030&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20,
        ),
        CachedNetworkImage(
          imageUrl:
              "https://images.unsplash.com/photo-1739382120665-fa6bcf8b7833?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ],
    );
  }
}