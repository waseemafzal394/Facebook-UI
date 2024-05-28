import 'package:flutter/material.dart';

import 'messengercall.dart';
import 'messengerchat.dart';
import 'messengerpeople.dart';
import 'messengerstory.dart';



class Messenger extends StatefulWidget {
  const Messenger({super.key});

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  int myIndex = null;
  List<Widget> widgetList = [
    MessengerChat(),
    MessengerCall(),
    MessengerPeople(),
    MessengerStory(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index){
            setState(() {
              myIndex = index;
            });
          },

          currentIndex: myIndex,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.videocam_rounded),label: 'Calls'),
        BottomNavigationBarItem(icon: Icon(Icons.group),label: 'People'),
        BottomNavigationBarItem(icon: Icon(Icons.amp_stories),label: 'Stories'),
      ]),

      body: widgetList[myIndex],

    );
  }
}
