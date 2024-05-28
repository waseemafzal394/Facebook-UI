import 'package:flutter/material.dart';

class Vedios extends StatefulWidget {
  const Vedios({super.key});

  @override
  State<Vedios> createState() => _VediosState();
}

class _VediosState extends State<Vedios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index){
            return Container(
              height: 345,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.asset('assets/images/actor.jpg',
                                fit: BoxFit.cover,)),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Text('Waseem Afzal',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                      color: Colors.black
                                  ),),

                                Row(
                                  children: [
                                    Text('10m . ',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10
                                      ),
                                    ),
                                    Icon(Icons.group_outlined,
                                      size: 10,
                                      color: Colors.grey,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Icon(Icons.linear_scale_outlined,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Icon(Icons.cancel_outlined,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text('Alhamdulillah for everything'),
                  ),

                  SizedBox(height: 5),

                  Container(
                    height: 180,
                    width: 500,
                    color: Colors.green,
                    child: Image.asset('assets/images/beuty.jpg',
                      fit: BoxFit.cover,),
                  ),

                  Container(
                    height: 35,
                    color: Colors.white,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row
                            (children: [
                            Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3.0),
                                    child: CircleAvatar(
                                      radius: 10,
                                      child: Icon(Icons.thumb_up_alt_outlined,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: CircleAvatar(radius: 10,
                                      backgroundColor: Colors.red,
                                      child: Icon(Icons.favorite,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                    ),
                                  )
                                ]
                            ),
                            SizedBox(width: 10),
                            Text('Waseem Afzal and 8 others',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13
                              ),
                            )

                          ],),

                          Text('13 comments',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13
                            ),
                          )

                        ],
                      ),
                    ),
                  ),

                  Divider(
                    thickness: .5,
                    color: Colors.grey,
                    endIndent: 10,
                    indent: 10,
                  ),

                  Container(
                    height: 35,
                    color: Colors.white,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row(children: [
                            Icon(Icons.thumb_up_alt_outlined,
                              size: 20,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 5),
                            Text('Like',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17
                              ),
                            )],),

                          Row(children: [
                            Icon(Icons.messenger_outline_outlined,
                              size: 20,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 5),
                            Text('Comment',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17
                              ),
                            )],),

                          Row(children: [
                            Icon(Icons.shortcut_outlined,
                              size: 20,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 5),
                            Text('Share',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17
                              ),
                            )],),

                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 8,
                    color: Colors.grey.shade300,
                  ),


                ],
              ),


            );
          }),
    );
  }
}
