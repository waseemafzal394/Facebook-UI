import 'package:facebook/pluslive.dart';
import 'package:facebook/pluspost.dart';
import 'package:facebook/plusreel.dart';
import 'package:facebook/plusstory.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  int myIndex = 0;

  List<Widget> widgetList = [
    PlusPost(),
    PlusStory(),
    PlusReel(),
    PlusLive(),

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
          BottomNavigationBarItem(icon: Text('Post',
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
          ),label: ''),
          BottomNavigationBarItem(icon: Text('Story',
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
          ),label: ''),
          BottomNavigationBarItem(icon: Text('Reel',
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
          ),label: ''),
          BottomNavigationBarItem(icon: Text('Live',
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
          ),label: ''),

      ]),

      body: widgetList[myIndex],
    );
  }
}
