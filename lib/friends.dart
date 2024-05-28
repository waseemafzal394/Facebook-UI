import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade300,
                        ),
                        child: Text('Suggestions',
                    style: TextStyle(
                      color: Colors.black
                    ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey.shade300,
                              ),
                              child: Text('Your friends',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: .3,
              color: Colors.grey,
              indent: 10,
              endIndent: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text('Friend requests',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                    ),
                    SizedBox(width: 5),
                    Text('20',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),
                    ),

                  ],),
                  TextButton(onPressed: (){}, child: Text('See all'))
                ],
              ),
            ),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, int index){
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          height: 80,
                          width: 80,

                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: ClipRRect(borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/images/actor.jpg')),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 260,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 8, top: 7),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text('Waseem Afzal',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600
                                    ),),
                                  Text('2y',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10
                                    ),
                                  )

                                ],),
                              SizedBox(height: 5),
                              Row(children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50),
                                          child: Image.asset('assets/images/actor.jpg')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18.0),
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50)
                                        ),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(50),
                                            child: Image.asset('assets/images/actor.jpg')),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 5),
                                Text('4 mutual friends',
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),
                                )

                              ],),
                              Row(children: [
                                SizedBox(
                                  width: 110,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,

                                      ),
                                      onPressed: (){}, child: Text('confirm',
                                  style: TextStyle(
                                    fontSize: 17
                                  ),
                                  )),
                                ),
                                SizedBox(width: 10),
                                SizedBox(
                                  width: 110,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.grey.shade300,

                                      ),
                                      onPressed: (){}, child: Text('delete',
                                    style: TextStyle(
                                        fontSize: 17,
                                      color: Colors.black
                                    ),
                                  )),
                                ),
                              ],),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
            })
          ],

        ),
      ),
    );
  }
}
