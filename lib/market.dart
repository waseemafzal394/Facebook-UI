import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Markrtplace',
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
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
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
          ),
        ],
      ),
      
      body: SingleChildScrollView(

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              SizedBox(
                width: 150,
                height: 35,
                child: ClipRRect(borderRadius: BorderRadius.circular(50),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade300,

                      ),
                      onPressed: (){}, child: Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Row(
                          children: [
                            Icon(Icons.edit_calendar_outlined,
                            color: Colors.black,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text('Sell',
                    style: TextStyle(
                              fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),
                  ),
                          ],
                        ),
                      )),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 150,
                height: 35,
                child: ClipRRect(borderRadius: BorderRadius.circular(50),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade300,

                      ),
                      onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.line_weight_sharp,
                            color: Colors.black,
                            size: 15,
                          ),
                          SizedBox(width: 5),
                          Text('Catagories',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],),
            Divider(
              thickness: .3,
              color: Colors.grey,
              indent: 10,
              endIndent: 10,
            ),

            SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.only(left: 18.0 , right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today\'s picks',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  ),

                  Row(children: [
                    Icon(Icons.location_on,
                    color: Colors.blue,
                      size: 20,
                    ),
                    TextButton(onPressed: (){}, child: Text('Multan'))
                  ],)
                ],
              ),
            ),


            Container(
              margin: const EdgeInsets.symmetric(horizontal: 0),
              height: MediaQuery.of(context).size.height ,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      crossAxisCount: 2, crossAxisSpacing: 3,
                      mainAxisSpacing: 3),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 150,
                          child: Image.asset(
                            "assets/images/actor.jpg",
                            width: 180,
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(height: 5),
                        
                        Text('Rs2,200 . 3 pic actor',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    );
                  }),
            ),
            
          ],
        ),
      ),
    );;
  }
}
