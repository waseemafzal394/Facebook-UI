import 'package:flutter/material.dart';

import 'vedios.dart';

class Vedio extends StatefulWidget {
  const Vedio({super.key});

  @override
  State<Vedio> createState() => _VedioState();
}

class _VedioState extends State<Vedio> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text('Friends',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade100,
                child: IconButton(
                  icon: const Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 25,
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
                radius: 25,
                backgroundColor: Colors.grey.shade100,
                child: IconButton(
                  icon: const Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                    size: 20,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
              ),
            ),
          ],
          bottom: TabBar(

              indicatorColor: Colors.white,
              labelPadding: EdgeInsets.zero,
              tabs: [
                Tab(
                    child: Text('For you',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    )
                ),
                Tab(
                    child: Text('Live',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    )
                ),
                Tab(
                    child: Text('Gaming',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    )
                ),
                Tab(
                    child: Text('Reels',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    )
                ),
                Tab(
                    child: Text('Following',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    )
                ),

              ]),



        ),

        body: TabBarView(children: [
          Vedios(),
          Container(
            child: Center(child: Text('waseem')),
          ),
          Container(
            child: Center(child: Text('waseem')),
          ),
          Container(
            child: Center(child: Text('waseem')),
          ),
          Container(
            child: Center(child: Text('waseem')),
          ),
        ]),
      ),
    );
  }
}
