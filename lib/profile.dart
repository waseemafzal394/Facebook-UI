import 'package:facebook/plus.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,
          color: Colors.black,
          size: 25,
        ),
        title: Row(
          children: [
            Text(
              'Waseem Malik',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(Icons.arrow_drop_down_outlined,
            color: Colors.black,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search,
              color: Colors.black,

            ),
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(

              children: [
                Container(
                height: 200,
                color: Colors.green,
                child: Image.asset('assets/images/1212.jpeg',
                  fit: BoxFit.cover,
                ),
              ),

                Padding(
                  padding: const EdgeInsets.only(top: 140.0,right: 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.white),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.camera_alt,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 110.0, left: 10),
                  child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                        border: Border.all(width: 3,
                            color: Colors.white),
                      borderRadius: BorderRadius.circular(70)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Image.asset('assets/images/actor.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                 Padding(
                   padding: const EdgeInsets.only(top: 210.0,left: 110),
                   child: Container(
                     decoration: BoxDecoration(
                       border: Border.all(width: 2,color: Colors.white),
                       borderRadius: BorderRadius.circular(50)
                     ),
                     child: CircleAvatar(
                         radius: 20,
                         backgroundColor: Colors.grey,
                         child: Icon(Icons.camera_alt,
                         color: Colors.black,
                         )),
                   ),
                 ),
              ]
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Waseem Malik',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28
              ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      // width: 127,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,

                          ),

                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.add,
                                size: 15,
                                color: Colors.white,
                              ),
                              SizedBox(width: 2),
                              Text('Add to story',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ))),
                  SizedBox(width: 5),
                  SizedBox(
                      // width: 122,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade300,

                          ),

                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.edit,
                                size: 15,
                                color: Colors.black,
                              ),
                              SizedBox(width: 2),
                              Text('Edit Profile',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ))),
                  SizedBox(width: 5),
                  SizedBox(
                      // width: 60,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade300,

                          ),

                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.linear_scale_outlined,
                                size: 15,
                                color: Colors.black,
                              ),
                            ],
                          ))),
                ],),
            ),

            SizedBox(height: 15),

            Container(
              height: 30,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.screen_lock_portrait_outlined,
                  size: 20,
                    color: Colors.white,
                  ),
                ),

                title: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text('You locked your profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),
                ),

                subtitle: Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(onPressed: (){}, child: Text('Learn more',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                  )),
                ),
              ),
            ),

            SizedBox(height: 40),

            Container(
              height: 15,color: Colors.grey.shade400,
            ),



            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  SizedBox(
                      width: 80,
                      height: 40,
                      child: ClipRRect(borderRadius: BorderRadius.circular(50),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue.shade100,
                            ),
                            onPressed: (){},
                            child:
                            Text('Post',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15
                              ),
                            ),
                        ),
                      )),
                  SizedBox(width: 15),
                  Text('Reels',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                    ),
                  ),
                ],
              ),
            ),

            Divider(
              thickness: .8,
              color: Colors.grey,
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Details',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23
              ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.school_rounded,
              size: 28,
              ),
              title: RichText(maxLines: 2,
                  text: TextSpan(
                      children: [
                        TextSpan(text: 'Studied at ', style: TextStyle(
                            color: Colors.black,
                            fontSize: 15
                        ),),
                        TextSpan(text: 'Bahauddin Zakriya University, Multan, Pakistan',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),),

              ]),
            ),
            ),
            ListTile(
              leading: Icon(Icons.home_sharp,
                size: 28,
              ),
              title: RichText(maxLines: 2,
                text: TextSpan(
                    children: [
                      TextSpan(text: 'lives in', style: TextStyle(
                          color: Colors.black,
                          fontSize: 15
                      ),),
                      TextSpan(text: ' Multan',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),),

                    ]),
              ),
            ),



            ListTile(
              leading: Icon(Icons.linear_scale_outlined,
                size: 28,
              ),
              title: Text('See your About info',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15
              ),
              )
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: SizedBox(
                  width: 320,
                  height: 40,
                  child: ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade100,
                      ),
                      onPressed: (){},
                      child:
                      Text('Edit public details',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),
                      ),
                    ),
                  )),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Friends',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),
                    ),
                    Text('20 friends',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18
                    ),
                    ),
                  ],
                ),
                  TextButton(onPressed: (){}, child: Text('Find Friends',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15
                  ),
                  ))
              ],),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 290,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: .8,
                        crossAxisCount: 3, crossAxisSpacing: 3,
                        mainAxisSpacing:5),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/actor.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Waseem Afzal',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: SizedBox(
                  width: 320,
                  height: 40,
                  child: ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade300,
                      ),
                      onPressed: (){},
                      child:
                      Text('See all friends',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Posts',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),
                  ),
                  TextButton(onPressed: (){}, child: Text('Filters',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15
                  ),
                  ))

              ],),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.asset('assets/images/actor.jpg',
                      fit: BoxFit.cover,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: TextFormField(

                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 20),

                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              hintText: 'What\'s on your mind?',
                              hintStyle: const TextStyle(color: Colors.black,
                              fontSize: 20
                              )
                          ),
                        ),
                      ),
                    ),
                  ),

                  const Icon(Icons.image,
                    color: Colors.green,
                  ),

                ],
              ),
            ),

            Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                border: Border(
                  top: BorderSide(width: .5, color: Colors.grey),
                  bottom: BorderSide(width: .5, color: Colors.grey),
                )
              ),


              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(children: [
                  SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                              )

                          ),

                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.ondemand_video,
                                size: 20,
                                color: Colors.red,
                              ),
                              SizedBox(width: 5),
                              Text('Reels',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ))),
                  SizedBox(width: 10),
                  SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                              )

                          ),

                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.video_camera_front,
                                size: 20,
                                color: Colors.red,
                              ),
                              SizedBox(width: 5),
                              Text('Live',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ))),
                ],),
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: SizedBox(
                  width: 320,
                  height: 40,
                  child: ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade300,
                      ),
                      onPressed: (){},
                      child:
                      Padding(
                        padding: const EdgeInsets.only(left: 80.0),
                        child: Row(
                          children: [
                            Icon(Icons.message,
                            size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5),
                            Text('Manage posts',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ),


            SizedBox(height: 15),

            Container(
              height: 15,
              color: Colors.grey.shade300,
            ),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              )

                          ),

                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.save_outlined,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(width: 2),
                              Text('photo',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ))),
                  SizedBox(width: 10),
                  SizedBox(
                      // width: 100,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                              )

                          ),

                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.emoji_emotions_rounded,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(width: 2),
                              Text('Avatars',
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
            SizedBox(height: 15),

            Container(
              height: 15,
              color: Colors.grey,
            ),

            const SizedBox(height: 15),
            ListView.builder(
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
                                      const Text('Waseem Afzal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13,
                                            color: Colors.black
                                        ),),

                                      Row(
                                        children: [
                                          const Text('10m . ',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10
                                            ),
                                          ),
                                          const Icon(Icons.group_outlined,
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

                        const SizedBox(height: 10),

                        const Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text('Alhamdulillah for everything'),
                        ),

                        const SizedBox(height: 5),

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
                                        const Padding(
                                          padding: EdgeInsets.only(left: 3.0),
                                          child: CircleAvatar(
                                            radius: 10,
                                            child: Icon(Icons.thumb_up_alt_outlined,
                                              color: Colors.white,
                                              size: 12,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 20.0),
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
                                  const SizedBox(width: 10),
                                  const Text('Waseem Afzal and 8 others',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13
                                    ),
                                  )

                                ],),

                                const Text('13 comments',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),

                        const Divider(
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
                                  const Icon(Icons.thumb_up_alt_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 5),
                                  const Text('Like',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17
                                    ),
                                  )],),

                                Row(children: [
                                  const Icon(Icons.messenger_outline_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 5),
                                  const Text('Comment',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 17
                                    ),
                                  )],),

                                Row(children: [
                                  const Icon(Icons.shortcut_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 5),
                                  const Text('Share',
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





          ],
        ),
      ),
    );
  }
}
