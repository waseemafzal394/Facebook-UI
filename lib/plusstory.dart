import 'package:flutter/material.dart';

class PlusStory extends StatefulWidget {
  const PlusStory({super.key});

  @override
  State<PlusStory> createState() => _PlusStoryState();
}

class _PlusStoryState extends State<PlusStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.cancel_outlined,
        color: Colors.black,
        ),
        title: Center(
          child: Text(
            'Creat story',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: [
          Icon(Icons.settings,
          color: Colors.black,

          )
        ],
      ),

      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    width:110,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.greenAccent, Colors.blueAccent
                        ]
                      ),
                      borderRadius: BorderRadius.circular(10)

                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.music_note)),
                    SizedBox(height: 5),
                    Text('Music',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    )
                  ],),
                  ),
                  Container(
                    height: 150,
                    width:110,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.purpleAccent, Colors.redAccent
                            ]
                        ),
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Text('Aa',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 20
                              ),
                            )),
                        SizedBox(height: 5),
                        Text('Text',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],),
                  ),
                  Container(
                    height: 150,
                    width:110,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.orangeAccent, Colors.yellow
                            ]
                        ),
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.emoji_emotions_outlined,
                            color: Colors.black,)),
                        SizedBox(height: 5),
                        Text('Selfie',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text('Gallery',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600

                    ),
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded,
                    size: 20,
                      color: Colors.black,
                    )
                  ],),

                  SizedBox(
                      // width: 152,
                      height: 35,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                            side: BorderSide(
                              width: 2,
                              color: Colors.black
                            )

                          ),
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.save_outlined,
                                size: 25,
                                color: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Text('Select multiple',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ))),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height ,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                  crossAxisCount: 3,
                childAspectRatio: .8,
                crossAxisSpacing: 2,mainAxisSpacing: 2
              ),
                  itemBuilder: (context, index){
                return Container(
                  height: 200,
                  child: Image.asset(
                    "assets/images/actor.jpg",
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                );
                  }),
            )

          ],
        ),
      ),
    );
  }
}
