import 'package:facebook/plus.dart';
import 'package:flutter/material.dart';

import 'friends.dart';
import 'home.dart';
import 'market.dart';
import 'menu.dart';
import 'messenger.dart';
import 'notification.dart';
import 'vedio.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            shape: Border(bottom: BorderSide(color: Colors.grey.shade100)),
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text(
              'facebook',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,
              color: Colors.blue
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey.shade100,

                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 18,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Add();
                      }));
                      // do something
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey.shade100,
                  child: IconButton(
                    icon: const Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                      size: 18,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey.shade100,
                  child: IconButton(
                    icon: const Icon(
                      Icons.message,
                      color: Colors.black,
                      size: 18,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return Messenger();
                      }));
                      // do something
                    },
                  ),
                ),
              ),
            ],
            bottom: TabBar(

                indicatorColor: Colors.blue,
                labelPadding: EdgeInsets.zero,
                tabs: [
                  Tab(
                      child: Icon(Icons.home_outlined,
                        size: 25,
                        color: Colors.grey,
                      )
                  ),
                  Tab(
                    child: Icon(Icons.group_outlined,
                    size: 25,
                      color: Colors.grey,
                    )
                  ),
                  Tab(
                      child: Icon(Icons.live_tv_outlined,
                        size: 25,
                        color: Colors.grey,
                      )
                  ),
                  Tab(
                      child: Icon(Icons.fireplace_outlined,
                        size: 25,
                        color: Colors.grey,
                      )
                  ),
                  Tab(
                      child: Icon(Icons.notifications_none_outlined,
                        size: 25,
                        color: Colors.grey,
                      )
                  ),
                  Tab(
                      child: Icon(Icons.line_weight_sharp,
                        size: 25,
                        color: Colors.grey,
                      )
                  ),
                ]),

          ),
          body:
          TabBarView(

              children: [
            Home(),
            Friends(),
            Vedio(),
            Market(),
            Noti(),
            Menu(),
          ])
           ),
    );
  }
}
