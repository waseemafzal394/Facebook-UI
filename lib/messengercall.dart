import 'package:flutter/material.dart';

class MessengerCall extends StatefulWidget {
  const MessengerCall({super.key});

  @override
  State<MessengerCall> createState() => _MessengerCallState();
}

class _MessengerCallState extends State<MessengerCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text('Calls',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
              icon: const Icon(
                Icons.line_weight,
                color: Colors.black,
                size: 25,
              ),
              onPressed: () {
                // do something
              },
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.shade200,
              child: IconButton(
                icon: const Icon(
                  Icons.call,
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
              radius: 20,
              backgroundColor: Colors.grey.shade200,
              child: IconButton(
                icon: const Icon(
                  Icons.videocam_rounded,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: () {
                  // do something
                },
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 17, bottom: 10),
              child: Text('Recents',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),

            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage("assets/images/actor.jpg"),
                                fit: BoxFit.cover
                            )
                        ),

                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.grey.shade200,
                          child: IconButton(
                            icon: const Icon(
                              Icons.call,
                              color: Colors.black,
                              size: 15,
                            ),
                            onPressed: () {
                              // do something
                            },
                          ),
                        ),
                      ),
                      title: Text('Waseem Afzal',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(Icons.add_call,
                          color: Colors.red,
                          size: 15,
                          ),
                          Text('Missed',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12
                          ),
                          ),
                          SizedBox(width: 10),
                          Text('.Aug 25',
                            style: TextStyle(
                              fontSize: 12
                            ),
                          ),
                        ],
                      ),

                    ),
                  );
                }),

          ],
        ),
      ),
    );
  }
}
