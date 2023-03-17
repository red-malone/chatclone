import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Chats'), actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
          SizedBox(width: 25),
        ]),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Rohit'),
                subtitle: Text('Whoop Whoop , son of a police'),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://static.wikia.nocookie.net/among-us-wiki/images/3/31/Red.png/revision/latest?cb=20211122214947'),
                ),
                trailing: Text('1$index:00PM'),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount:50));
    }
}