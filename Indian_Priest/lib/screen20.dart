import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:indian_priest/screen21.dart';
import 'package:intl/intl.dart';

class screen20 extends StatefulWidget {
  const screen20({Key? key}) : super(key: key);

  @override
  State<screen20> createState() => _screen20State();
}

class _screen20State extends State<screen20> {
  chatBubble(Message message, bool isMe, bool isSmeUser) {
    if (isMe) {
      return Column(children: <Widget>[
        Container(
            alignment: Alignment.topLeft,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    )
                  ]),
              child: Text(
                message.text,
                style: TextStyle(color: Colors.black54),
              ),
            )),
        // !isSmeUser
        //     ?
        // Row(
        //   children: <Widget>[
        //     Container(
        //       padding: EdgeInsets.all(2),
        //       decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        //         BoxShadow(
        //           color: Colors.grey.withOpacity(0.5),
        //           spreadRadius: 2,
        //           blurRadius: 5,
        //         )
        //       ]),
        //   child: CircleAvatar(
        //     radius: 15,
        //     backgroundImage:
        //         AssetImage('priest-services/images/image 4 (7).png'),
        //   ),
        // ),
        // SizedBox(
        //   width: 10,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              message.time,
              style: TextStyle(fontSize: 12, color: Colors.black45),
            ),
          ],
        ),
      ]);
    } else {
      return Column(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                alignment: Alignment.topRight,
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.80,
                  ),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 226, 233),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]),
                  child: Text(message.text),
                )),
            // !isSmeUser
            //     ?
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Container(
                //   padding: EdgeInsets.all(2),
                //   decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                //     BoxShadow(
                //       color: Colors.grey.withOpacity(0.5),
                //       spreadRadius: 2,
                //       blurRadius: 5,
                //     )
                //   ]),
                // ),
                Text(
                  message.time,
                  style: TextStyle(fontSize: 12, color: Colors.black45),
                ),
                // SizedBox(
                //   width: 10,
                // ),
                // CircleAvatar(
                //   radius: 15,
                //   backgroundImage: AssetImage(message.sender.imageUrl),
                // ),
              ],
            )
            // : Container(child: null),
          ],
        )
      ]);
    }
  }

  sendMessageArea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.attach_file_rounded),
            iconSize: 25,
            color: Colors.grey,
          ),
          Expanded(
            // ignore: prefer_const_constructors
            child: TextField(
              decoration:
                  InputDecoration.collapsed(hintText: 'send a message...'),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
            iconSize: 25,
            color: Colors.deepOrange,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Chat',
            ),
            centerTitle: true,
            leading: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 8),
                child: Container(
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: IconButton(
                    // ignore: prefer_const_constructors
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const screen21()),
                      );
                    },
                    iconSize: 25.0,
                  ),
                )),
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 8),
                child: Container(
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  // ignore: sort_child_properties_last
                  child: SvgPicture.asset('images/message-circle-outline 1.svg',
                      height: 5, width: 5, fit: BoxFit.scaleDown),
                ),
              ),

              // ignore: sort_child_properties_last
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
                child: Container(
                  width: 38,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  // ignore: sort_child_properties_last
                  child: IconButton(
                    onPressed: () {},
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
          body: Column(children: <Widget>[
            Expanded(
              child: ListView.builder(
                reverse: true,
                padding: EdgeInsets.all(20),
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message message = messages[index];
                  final bool isMe = message.sender.id == others.id;

                  int prevUserId = message.sender.id;
                  final bool isSmeUser = prevUserId == message.sender.id;
                  return chatBubble(message, isMe, isSmeUser);
                },
              ),
            ),
            sendMessageArea(),
          ]),
        ));
  }
}

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

/////////homescreen
List<Message> chats = [
  Message(
      sender: TarachandJoshi,
      time: '1:19 PM',
      text: 'Thank you, just received. See you at 7:30 am tomorrow.',
      unread: true),
  Message(
    sender: others,
    time: '1:15 PM',
    text: 'Sure, i just shared it. Thanks',
    unread: true,
  ),
  Message(
      sender: TarachandJoshi,
      time: '1:19 PM',
      text:
          'Jai SriKrishna, Amit. How are you. Can you share the live location with me',
      unread: true),
  Message(
      sender: others,
      time: '1:15 PM',
      text: 'Hello Joshi Ji, Good Morning. Thanks for accepting our booking.',
      unread: true),
];
// ////chat screen

List<Message> messages = [
  Message(
      sender: TarachandJoshi,
      time: '1:19 PM',
      text: 'Thank you, just received. See you at 7:30 am tomorrow.',
      unread: true),
  Message(
    sender: others,
    time: '1:15 PM',
    text: 'Sure, i just shared it. Thanks',
    unread: true,
  ),
  Message(
      sender: TarachandJoshi,
      time: '1:19 PM',
      text:
          'Jai SriKrishna, Amit. How are you. Can you share the live location with me',
      unread: true),
  Message(
      sender: others,
      time: '1:15 PM',
      text: 'Hello Joshi Ji, Good Morning. Thanks for accepting our booking.',
      unread: true),
];

class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;
  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Nick Fury',
  imageUrl: '',
  isOnline: true,
);
final User others = User(id: 1, name: 'Iron Man', imageUrl: '', isOnline: true);

final User TarachandJoshi =
    User(id: 2, name: 'captain america', imageUrl: '', isOnline: true);
