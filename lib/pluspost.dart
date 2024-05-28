import 'package:flutter/material.dart';

class PlusPost extends StatefulWidget {
  const PlusPost({super.key});

  @override
  State<PlusPost> createState() => _PlusPostState();
}

class _PlusPostState extends State<PlusPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          'Creat post',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade300,

                ),
                onPressed: (){}, child: Text('POST',
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),
            )),
          )
        ],
      ),

      body: Stack(
        children: [
         Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 8.0),
               child: ListTile(
                 leading: Container(
                   height: 55,
                   width: 55,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50)
                   ),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(50),
                       child: Image.asset('assets/images/actor.jpg')),
                 ),
                 title: Text('Waseem Afzal',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20
                 ),
                 ),
                 subtitle: Padding(
                   padding: const EdgeInsets.only(top: 8.0),
                   child: Row(
                     children: [
                       SizedBox(

                           height: 30,
                           child: ElevatedButton(
                               style: ElevatedButton.styleFrom(
                                   primary: Colors.blue.shade100,
                                   padding: EdgeInsets.all(5),
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10)
                                   )

                               ),

                               onPressed: (){},
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Icon(Icons.group,
                                     size: 13,
                                     color: Colors.blue,
                                   ),
                                   SizedBox(width: 2),
                                   Text('Friends',
                                     style: TextStyle(
                                         color: Colors.blue,
                                         fontWeight: FontWeight.w600,
                                         fontSize: 12
                                     ),
                                   ),
                                   Icon(Icons.arrow_drop_down_outlined,
                                   color: Colors.blue,
                                   )
                                 ],
                               ))),

                       SizedBox(width: 5),
                       SizedBox(

                           height: 30,
                           child: ElevatedButton(
                               style: ElevatedButton.styleFrom(
                                   primary: Colors.blue.shade100,
                                   padding: EdgeInsets.all(5),
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10)
                                   )

                               ),

                               onPressed: (){},
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Icon(Icons.add,
                                     size: 13,
                                     color: Colors.blue,
                                   ),
                                   SizedBox(width: 2),
                                   Text('Album',
                                     style: TextStyle(
                                         color: Colors.blue,
                                         fontWeight: FontWeight.w600,
                                         fontSize: 12
                                     ),
                                   ),
                                   Icon(Icons.arrow_drop_down_outlined,
                                     color: Colors.blue,
                                   )
                                 ],
                               ))),

                       SizedBox(width: 5),
                       SizedBox(

                           height: 30,
                           child: ElevatedButton(
                               style: ElevatedButton.styleFrom(
                                   primary: Colors.blue.shade100,padding: EdgeInsets.all(5),
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10)
                                   )

                               ),

                               onPressed: (){},
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Icon(Icons.image_outlined,
                                     size: 13,
                                     color: Colors.blue,
                                   ),
                                   SizedBox(width: 2),
                                   Text('Off',
                                     style: TextStyle(
                                         color: Colors.blue,
                                         fontWeight: FontWeight.w600,
                                         fontSize: 12
                                     ),
                                   ),
                                   Icon(Icons.arrow_drop_down_outlined,
                                     color: Colors.blue,
                                   )
                                 ],
                               ))),
                     ],
                   ),
                 ),
               ),
             ),

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: 'What\'s on your Mind?',
                   hintStyle: TextStyle(fontSize: 23,
                     color: Colors.grey

                   ),
                 ),
               ),
             ),
           ],
         ),


          DraggableScrollableSheet(
            minChildSize: 0.3, maxChildSize: 0.7, initialChildSize: 0.5,
              // expand: true,
              builder: (BuildContext context, ScrollController scrollcontroller){
                return Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    controller: scrollcontroller,
                    children:  [

                      Icon(Icons.keyboard_arrow_up_outlined),


                      Container(
                        height: 50,
                        decoration: BoxDecoration(border:
                        Border(
                          top: BorderSide(color: Colors.grey),
                          bottom: BorderSide(color: Colors.grey)
                        )),

                        child: ListTile(

                          leading: Icon(Icons.satellite_outlined,
                            color: Colors.green,
                          ),
                          title: Text('Photo/video',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      Container(height: 50,
                        decoration: BoxDecoration(border:
                        Border(
                            bottom: BorderSide(color: Colors.grey)
                        )),
                        child: ListTile(
                          leading: Icon(Icons.person_remove,
                            color: Colors.blue,
                          ),

                          title: Text('Tag people',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      Container(decoration: BoxDecoration(border:
                      Border(
                          bottom: BorderSide(color: Colors.grey)
                      )),
                        child: ListTile(
                          leading: Icon(Icons.emoji_emotions_outlined,
                            color: Colors.yellow,
                          ),

                          title: Text('Feeling/activity',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      Container(decoration: BoxDecoration(border:
                      Border(
                          bottom: BorderSide(color: Colors.grey)
                      )),
                        child: ListTile(
                          leading: Icon(Icons.location_on,
                            color: Colors.red,
                          ),

                          title: Text('Check in',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      Container(decoration: BoxDecoration(border:
                      Border(
                          bottom: BorderSide(color: Colors.grey)
                      )),
                        child: ListTile(
                          leading: Icon(Icons.video_camera_front,
                            color: Colors.red,
                          ),

                          title: Text('Live video',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      Container(decoration: BoxDecoration(border:
                      Border(
                          bottom: BorderSide(color: Colors.grey)
                      )),
                        child: ListTile(
                          leading: Text('Aa',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),

                          title: Text('Backgrpund color',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      Container(decoration: BoxDecoration(border:
                      Border(
                          bottom: BorderSide(color: Colors.grey)
                      )),
                        child: ListTile(
                          leading: Icon(Icons.camera_alt,
                            color: Colors.blue,
                          ),

                          title: Text('Camera',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      Container(decoration: BoxDecoration(border:
                      Border(
                          bottom: BorderSide(color: Colors.grey)
                      )),
                        child: ListTile(
                          leading: Icon(Icons.gif_box_rounded,
                            color: Colors.green,
                          ),

                          title: Text('GIF',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),

                      Container(decoration: BoxDecoration(border:
                      Border(
                          bottom: BorderSide(color: Colors.grey)
                      )),
                        child: ListTile(
                          leading: Icon(Icons.music_note,
                            color: Colors.red,
                          ),

                          title: Text('Music',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              })


        ],
      ),
    );
  }
}
