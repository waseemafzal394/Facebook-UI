import 'package:flutter/material.dart';

class MessengerPeople extends StatefulWidget {
  const MessengerPeople({super.key});

  @override
  State<MessengerPeople> createState() => _MessengerPeopleState();
}

class _MessengerPeopleState extends State<MessengerPeople> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('People',
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
                  Icons.contact_page,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 17, bottom: 10),
                  child: Text('Facebook updates (10)',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),

                TextButton(onPressed: (){}, child: Text('SEE ALL'))
              ],
            ),

            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index){
                  return ListTile(
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
                    title: Text('Waseem Afzal',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text('Shared waseem afzal\'s post.'),
                        SizedBox(width: 10),
                        Text('.Aug 25'),
                      ],
                    ),
                  );
                }),

            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 17, bottom: 10),
              child: Text('Active now (10)',
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
                itemCount: 10,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 10.0),
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
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Container(

                            decoration: BoxDecoration(
                                shape: BoxShape.circle
                            ),

                            child: CircleAvatar(radius: 5,
                              backgroundColor: Colors.green,
                              child: Icon(Icons.group_outlined,
                                size: 1,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      title: Text('Waseem Afzal',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12
                        ),
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
