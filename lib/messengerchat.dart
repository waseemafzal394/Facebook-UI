import 'package:flutter/material.dart';

class MessengerChat extends StatefulWidget {
  const MessengerChat({super.key});

  @override
  State<MessengerChat> createState() => _MessengerChatState();
}

class _MessengerChatState extends State<MessengerChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text('Chats',
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
                  Icons.edit,
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
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: SizedBox(
                height: 40,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  decoration:  InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,

                    border: OutlineInputBorder(borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    prefixIcon: Icon(Icons.search),
                    labelText: ' Search people, channel & more...',

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: SizedBox(
                height: 90,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
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
                            SizedBox(height: 10),
                            Text('Waseem Afzal',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                      ],

                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
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

                      ),
                      title: Text('Waseem Afzal',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12
                      ),
                      ),
                      subtitle: Row(
                        children: [
                          Text('kasy ho sir. kha ho aj kal?'),
                          SizedBox(width: 20),
                          Text('.Aug 25'),
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
