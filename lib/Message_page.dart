import 'package:flutter/material.dart';
import 'package:hometask_4/second_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Welcome',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),) ,
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body:Container(
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: Text('Your Email',style: TextStyle(color: Colors.cyan,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Center(
              child: Container(
                width: 350,
                child: TextField()
              ),

            ),
            Container(
              width: 300,
              height: 50,
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondPage()  ),),
                child:Text('Open Massenger',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),) ,
           style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
            )
            ),

          ],
        ),
      ),

    );
  }
}
