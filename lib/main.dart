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
          appBar: AppBar(
            title: Text('My App'),
            backgroundColor: const Color.fromARGB(255, 148, 135, 134),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                    CachedNetworkImage(
                      imageUrl: "https://plus.unsplash.com/premium_photo-1738516584227-5d10ffe4c6f8?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      placeholder: (context, url) => CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                 ),
                 CachedNetworkImage(
                      imageUrl: "https://images.unsplash.com/photo-1718563552473-2d97b224e801?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      placeholder: (context, url) => CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                 ),
                 CachedNetworkImage(
                      imageUrl: "https://images.unsplash.com/photo-1737712334404-28df394651a6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      placeholder: (context, url) => CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                 ),
              ],
            ),
          )),
    );
  }
}
