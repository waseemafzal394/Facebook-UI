import 'package:facebook/profile.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,


      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Menu',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade200,
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
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade200,
                        child: IconButton(
                          icon: const Icon(
                            Icons.search_rounded,
                            color: Colors.black,
                            size: 25,
                          ),
                          onPressed: () {
                            // do something
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                height: 120,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                            return Profile();
                          }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
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

                                SizedBox(width: 10),
                                Text('waseem afzal',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20
                                ),
                                )
                              ],
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey.shade200,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                onPressed: () {
                                  // do something
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: .3,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 16,
                            ),
                            onPressed: () {
                              // do something
                            },
                          ),
                        ),

                        SizedBox(width: 10),

                        Text('Creat anothe profile',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                          ),
                        )
                      ],),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('Your shortcuts',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600
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
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.only(left: 12.0),
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
                              alignment: Alignment.bottomRight,
                              child: Container(

                                decoration: BoxDecoration(
                                    shape: BoxShape.circle
                                ),

                                child: CircleAvatar(radius: 12,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.group_outlined,
                                    size: 15,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Waseem Afzal',
                            style: TextStyle(
                              color: Colors.grey,
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
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('All shortcuts',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(children: [
                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300.withOpacity(.5),
                          spreadRadius: 5,
                          blurRadius: 5
                        )
                      ],
                      borderRadius:BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.av_timer,
                          color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(height: 5),
                          Text('Memories',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300.withOpacity(.5),
                              spreadRadius: 5,
                              blurRadius: 5
                          )
                        ],
                        borderRadius:BorderRadius.circular(10),
                        color: Colors.white
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.bookmark,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(height: 5),
                          Text('Saved',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),

              ],),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(children: [
                Expanded(
                  child: Container(

                    height: 70,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300.withOpacity(.5),
                              spreadRadius: 5,
                              blurRadius: 5
                          )
                        ],
                        borderRadius:BorderRadius.circular(10),
                        color: Colors.white
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(

                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300.withOpacity(.5),
                                      spreadRadius: 5,
                                      blurRadius: 5
                                  )
                                ],
                                shape: BoxShape.circle
                            ),

                            child: CircleAvatar(radius: 13,
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.group_outlined,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Group',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300.withOpacity(.5),
                              spreadRadius: 5,
                              blurRadius: 5
                          )
                        ],
                        borderRadius:BorderRadius.circular(10),
                        color: Colors.white
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.fireplace_outlined,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(height: 5),
                          Text('Marketplace',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),

              ],),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(children: [
                Expanded(
                  child: Container(

                    height: 70,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300.withOpacity(.5),
                              spreadRadius: 5,
                              blurRadius: 5
                          )
                        ],
                        borderRadius:BorderRadius.circular(10),
                        color: Colors.white
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.group,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(height: 5),
                          Text('Friends',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300.withOpacity(.5),
                              spreadRadius: 5,
                              blurRadius: 5
                          )
                        ],
                        borderRadius:BorderRadius.circular(10),
                        color: Colors.white
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.feedback_rounded,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(height: 5),
                          Text('Feeds',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),

              ],),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(children: [
                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300.withOpacity(.5),
                              spreadRadius: 5,
                              blurRadius: 5
                          )
                        ],
                        borderRadius:BorderRadius.circular(10),
                        color: Colors.white
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.live_tv_outlined,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(height: 5),
                          Text('Video',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300.withOpacity(.5),
                              spreadRadius: 5,
                              blurRadius: 5
                          )
                        ],
                        borderRadius:BorderRadius.circular(10),
                        color: Colors.white
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.event_busy_sharp,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(height: 5),
                          Text('Event',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),

              ],),
            ),

        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12, top: 20, bottom: 15),
          child: SizedBox(
            width: 330,
            height: 40,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(

                  primary: Colors.grey.shade300,

                ),
                onPressed: (){}, child: Text('See more',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),
            )),
          ),
        ),
            Divider(
              thickness: .5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: ListTile(
                title: Text('Help & support'),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade400,
                  child: IconButton(
                    icon: const Icon(
                      Icons.question_mark,
                      color: Colors.black,
                      size: 25,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                ),
                trailing: Icon(Icons.keyboard_arrow_down_outlined),
              ),
            ),
            Divider(
              thickness: .5,
              color: Colors.grey,
            ),
            ListTile(
              title: Text('Setting & privacy'),
              leading: IconButton(
                icon: const Icon(
                  Icons.settings_outlined,
                  color: Colors.grey,
                  size: 35,
                ),
                onPressed: () {
                  // do something
                },
              ),
              trailing: Icon(Icons.keyboard_arrow_down_outlined),
            ),
            Divider(
              thickness: .5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12, top: 20, bottom: 15),
              child: SizedBox(
                width: 330,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(

                      primary: Colors.grey.shade300,

                    ),
                    onPressed: (){}, child: Text('Log out',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),
                )),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
