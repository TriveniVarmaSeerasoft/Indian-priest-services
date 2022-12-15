import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:indian_priest/screen15.dart';
import 'package:indian_priest/screen17.dart';
import 'package:indian_priest/screen20.dart';

import 'screen16.dart';

class screen16 extends StatefulWidget {
  const screen16({Key? key}) : super(key: key);

  @override
  State<screen16> createState() => _screen16State();
}

class _screen16State extends State<screen16> {
  List PoojaSamagri = [
    'A Clay image of Lord Ganesha.',
    'Akshata-are prepared by mixing rice with wet turmeric,saffron,and sandalwod paste)',
    'Glass,udhdharani (the spoon for taking water),plate (small one to put the water as an offering)',
    'Kumkum-saffron',
    'Turmeric',
    'Sandal wood paste',
    'Betel leaves,nuts',
    'Pedestal',
    'Mango leaves-To decorate the threshold and to put in the kalash(see picture)',
    'Water-fetch after taking a bath',
    'Two pieces of red cloth',
    "Lamps and oil (sesame) or ghee(cow's) for the lamp and wicks ",
    'Incense sticks'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Pooja Items Required',
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 20, 8),
          child: Container(
            width: 40,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => screen15()));
              },
              color: Colors.white,
            ),
          ),
        ),
        leadingWidth: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 8),
            child: Container(
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              // ignore: sort_child_properties_last
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const screen20()),
                  );
                },
                // ignore: prefer_const_constructors
                icon: Icon(
                  Icons.message_outlined,
                  color: Colors.black,
                ),
                // iconSize: 25.0,
              ),
            ),
          ),

          // ignore: sort_child_properties_last
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
            child: Container(
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              // ignore: sort_child_properties_last
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const screen17()),
                  );
                },
                // ignore: prefer_const_constructors
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                ),
                iconSize: 25.0,
              ),
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(

              // ignore: prefer_const_literals_to_create_immutables
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 130, 34),
            Color.fromARGB(255, 248, 213, 35)
          ], begin: Alignment.bottomRight, end: Alignment.topRight)),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 130, 34),
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            child: ListView(children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                              'priest-services/images/image 4 (1).png'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tarachand Joshi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '5547 W North Ave, Chicago',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Container(
                                  width: 60,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(39, 249, 157, 198)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Telugu',
                                      style: TextStyle(
                                        color: Colors.red,
                                        // backgroundColor: Color.fromARGB(255, 252, 226, 234),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 60,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(39, 249, 157, 198)),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Tamil',
                                      style: TextStyle(
                                        color: Colors.red,
                                        // backgroundColor: Color.fromARGB(255, 252, 226, 234),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                ),
                // SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.deepOrange,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Ganapathi Puja',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      SizedBox(width: 100),
                      Container(
                        width: 60,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(39, 249, 157, 198)),
                        // ignore: prefer_const_constructors
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '\$${91.00}',
                            style: TextStyle(
                              color: Colors.red,
                              // backgroundColor: Color.fromARGB(255, 252, 226, 234),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 10),

                Divider(thickness: 2),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ignore: prefer_const_constructors
                        Text(
                          'Pooja samagri (items) Required',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              color: Color.fromARGB(255, 19, 139, 23),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: 'Montserrat'),
                        ),
                        SizedBox(width: 10),

                        // ignore: deprecated_member_use
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(
                                color: Colors.deepOrange,
                              )),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text('Coming Soon'),
                                      actions: [
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.pop(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        screen17()));
                                          },
                                          child: Text('OK'),
                                        )
                                      ],
                                    ));
                          },
                          child: Text(
                            'Download List',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.deepOrange,
                        ),
                      ]),
                ),
              ]),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  // controller: controller,
                  itemCount: PoojaSamagri.length,
                  // physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                      leading: Icon(
                        Icons.check,
                        color: Colors.black,
                      ),
                      title: Text(PoojaSamagri[index]),
                    );
                  }),
            ]),
          ),
        ]),
      ),
    );
  }
}
