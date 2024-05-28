import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Notification',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.shade300,
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  'New',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Stack(
                children: [
                  Container(
                    height: 55,
                    width: 55,
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
                        backgroundColor: Colors.red,
                        child: Icon(Icons.favorite,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],

              ),
              trailing: Icon(Icons.linear_scale_outlined),
              title: RichText(maxLines: 2,
                  text: TextSpan(
                      children: [
                        TextSpan(text: 'Waseem Afzal', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 13
                        ),),
                        TextSpan(text: ' and '),
                        TextSpan(text: 'Waseem Afzal',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 13
                          ),),
                        TextSpan(text: ' reacted to a video you shared'),
                      ], style: TextStyle(color: Colors.black)
                  )
              ),
              subtitle: Text('Sun at 12:22 AM',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  'Eariler',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
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
                              backgroundColor: Colors.red,
                              child: Icon(Icons.favorite,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],

                    ),
                    trailing: Icon(Icons.linear_scale_outlined),
                    title: RichText(maxLines: 2,
                        text: TextSpan(
                            children: [
                              TextSpan(text: 'Waseem Afzal', style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13
                              ),),
                              TextSpan(text: ' and '),
                              TextSpan(text: 'Waseem Afzal',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13
                                ),),
                              TextSpan(text: ' reacted to a video you shared'),
                            ], style: TextStyle(color: Colors.black)
                        )
                    ),
                    subtitle: Text('Sun at 12:22 AM',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
    ;
  }
}
