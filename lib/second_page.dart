import 'package:flutter/material.dart';
import 'package:hometask_4/Message_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Messages',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            _itemList(
              image: 'assets/images/Laurent.jpg',
              title: 'Laurent',
              time: '08:15',
              userSentence: 'Laurnet:How about meeting tomorrow?',
            ),
            _itemList(
              image: 'assets/images/Tracy.jpg',
              title: 'Tracy',
              time: '08:15',
              userSentence: 'It has been re-scheduled to next Saturday 7:30',
            ),
            _itemList(
              image: 'assets/images/Claire.jpg',
              title: 'Claire',
              time: '08:15',
              userSentence: 'It has been re-scheduled to next Saturday 7:30',
            ),
            _itemList(
              image: 'assets/images/Joe.jpg',
              title: 'Joe',
              time: '08:15',
              userSentence: 'It has been re-scheduled to next Saturday 7:30',
            ),
            _itemList(
              image: 'assets/images/Mark.jpg',
              title: 'Mark',
              time: '08:15',
              userSentence: 'It has been re-scheduled to next Saturday 7:30',
            ),
            _itemList(
              image: 'assets/images/Williams.jpg',
              title: 'Williams',
              time: '08:15',
              userSentence: 'It has been re-scheduled to next Saturday 7:30',
            ),

          ],
        ),
      ),
    );
  }

  Widget _itemList({required String image, required String title, required String time, required String userSentence}) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    userSentence,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),flex: 3,
          ),
          Expanded(child: Container(
            child: IconButton(onPressed: (){}, icon:Icon(Icons.keyboard_arrow_right))
          ),flex: 1,)
        ],
      ),
    );
  }
}