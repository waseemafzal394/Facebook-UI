import 'package:flutter/material.dart';

class PlusReel extends StatefulWidget {
  const PlusReel({super.key});

  @override
  State<PlusReel> createState() => _PlusReelState();
}

class _PlusReelState extends State<PlusReel> {

  box(String text, IconData iconData, Color color1, Color color2){
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 100,
        width:100,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                color1,
                color2
              ]            ),
            borderRadius: BorderRadius.circular(10)

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,
              color: Colors.white,
            ),
            SizedBox(height: 5),
            Text(text,
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],),
      ),
    );
  }

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

      ),

      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    box('Camera', Icons.videocam_rounded, Colors.blue.shade300,Colors.lightBlue),
                    box('Music', Icons.music_note, Colors.red.shade300,Colors.red),
                    box('Templates', Icons.add_box_rounded, Colors.blue.shade300,Colors.blue),
                    box('Effect', Icons.star, Colors.orange.shade300,Colors.orange),
                    box('Green screen', Icons.perm_contact_cal_outlined, Colors.green,Colors.blue),


                  ],
                ),
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
                              primary: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),


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
              height: 50,
              color: Colors.grey.shade300,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Drafts',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,
                    size: 15,
                    )
                  ],
                ),
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
