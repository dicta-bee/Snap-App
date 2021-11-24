import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
   final List<String> names = [
   'Kofi', 
   'Ama', 
   'Akos', 
   'Yaa',
   'Kelvin',];
   final List<String> images = [
     'https://images.unsplash.com/photo-1633113215883-a43e36bc6178?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
     'https://images.unsplash.com/photo-1637589656450-dee8948a3cc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
     'https://images.unsplash.com/photo-1637652058460-f7e35b57f5e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
     'https://images.unsplash.com/photo-1637608454257-c877eb9bfa8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
     'https://images.unsplash.com/photo-1637618002608-ad674184acb3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'
   ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(
          child: Text('Home'),
        ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Snap',
        style: TextStyle(
          fontSize: 45
        ),
        textDirection: TextDirection.ltr),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(images[index]),
          ),
          title: const Text('What is your name'),
          subtitle: Text(names[index]),
          trailing: const Icon(
            Icons.check_box_rounded,
            color:Colors.purple
        ),
        
        
      ),
      itemCount: names.length,

      
      
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.purple,
        onPressed: (){},
        child: const Icon(Icons.add)
      )
    ),
    );
  }
}