import 'package:facebook/plus.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
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
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                return Add();
                              }));
                            },
                            child: TextFormField(

                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 20),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1, color: Colors.grey
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                hintText: 'What\'s on your mind?',
                                hintStyle: const TextStyle(color: Colors.black)
                              ),
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
            ),
            Container(
              height: 8,
              color: Colors.grey.shade300,
            ),
            Container(
              height: 220,
              color: Colors.white,

              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(

                          decoration:  BoxDecoration(
                              color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,

                            ),
                            borderRadius: BorderRadius.circular(20)
                            ),
                          height: 200,
                          width: 120,


                          child: Column(
                            children: [
                              Stack(


                                children: [

                                  Container(
                                    height: 130,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: ClipRRect(borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),child: Image.asset('assets/images/actor.jpg',
                                      fit: BoxFit.cover,)),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 110.0),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: CircleAvatar(
                                              radius: 18,
                                              child: Icon(Icons.add)),
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                              ),

                              const SizedBox(height: 5),

                              const Text('Create',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                              const Text('story',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 200,
                      child: ListView.builder(

                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) => Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('assets/images/actor.jpg',
                                  fit: BoxFit.cover,)),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: CircleAvatar(
                                          radius: 18,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                              child: Image.asset('assets/images/actor.jpg')),
                                    ),
                                  ),
                                )

                                ),
                              )],

                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            Container(
              height: 8,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 10),
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
